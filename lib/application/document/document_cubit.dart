import 'package:bloc/bloc.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/update/image_upload_response.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'document_state.dart';
part 'document_cubit.freezed.dart';

@LazySingleton()
class DocumentCubit extends Cubit<DocumentState> {
  DocumentCubit() : super(DocumentState.initial());
  //SELFIE
  void updateSelfieImage(String path, {Uint8List? selfieBytes}) {
    emit(state.copyWith(selfie: {path: selfieBytes}));
  }

  void setDeletedSelfiePhoto(String? photoName) {
    emit(state.copyWith(deletedSelfiePhoto: photoName));
  }

  //get
  String getSelfiImageUrlByName(String name) {
    String data = '';

    for (var element in state.masterListData) {
      if (element.values.single.contains(name)) {
        data = element.values.single;
      }
    }
    return data;
  }

  void cleanState() {
    emit(DocumentState.initial());
  }

  void setTypeDocument(int? type) {
    emit(state.copyWith(selectedDataType: type));
  }

  void addNewPhotoDocument(String path, int index, {Uint8List? fileBytes}) {
    var list = state.selectedDocument!.imageList;
    if (kIsWeb) {
      //add / because we need it to check if the file is from local.
      //expected path if web is /filename.ext

      final pathName = DateTime.now().millisecondsSinceEpoch.toString() + path;

      list![index] = pathName;
      state.selectedDataCollection?.addAll({pathName: fileBytes});
    } else {
      list![index] = path;
    }

    emit(state.copyWith.selectedDocument!(
      imageList: list,
    ));
  }

  void removePhotoDocument(String path, int index) {
    List<String?>? lists = [];
    List<String>? deletedImage = [];
    lists = state.selectedDocument!.imageList;
    state.masterListData
        .removeWhere((element) => element.values.contains(path));
    if (!path.contains('/')) {
      //get deleted images
      deletedImage = state.deletedImagesName;
      //add new item on deleted image
      deletedImage!.add(path);
    }
    //remove image from current view
    lists!.removeWhere((element) => element == path);
    state.selectedDataCollection?.removeWhere((key, value) => key == path);
    lists.add(null);

    //update data
    state.copyWith(
      selectedDocument: state.selectedDocument!.copyWith(imageList: lists),
      deletedImagesName: deletedImage,
    );
  }

  void updateMasterImageData(List<Map<String, dynamic>> images) {
    emit(state.copyWith(masterListData: images.toList()));
  }

  void updateSelectedIndex(int index) {
    try {
      //update the list of document image
      List<String>? selectedImage;
      var selectedDocument = state.docs![index];
      if (state.masterListData != null) {
        final data = state.masterListData
            .where((element) => element.containsKey(selectedDocument.id));
        selectedImage =
            data.map((e) => e[selectedDocument.id].toString()).toList();
      }

      if (selectedDocument.attachment != null) {
        //Check if the current selected is PDF available.
        //if yes then make initial type to 1
        emit(state.copyWith(selectedDataType: 1));
      } else {
        //if no then make it null
        emit(state.copyWith(selectedDataType: null));
      }

      emit(
        state.copyWith(
          deletedImagesName: [],
          selectedIndex: index,
          selectedDocument: selectedDocument,
          selectedMasterListData: selectedImage,
          isAllRead: checkIfCanSubmit(),
        ),
      );
    } catch (e) {}
  }

  ///check if all data complete
  ///if anyFalse return -1, then all data is updated
  bool checkIfCanSubmit({List<DocumentDataModel>? models}) {
    late int anyFalse;
    if (models == null) {
      anyFalse =
          state.docs!.indexWhere((element) => element.isSubmited == false);
    } else {
      anyFalse = models.indexWhere((element) => element.isSubmited == false);
    }

    if (anyFalse == -1) {
      return true;
    } else {
      return false;
    }
  }

  void updateDocumentStatus(List<ImageUploadResponse> list) {
    // final docs = state.docs;
    // var doc = state.selectedDocument!.copyWith(isSubmited: true);
    // docs![docs.indexWhere(
    //     (element) => element.id == state.selectedDocument!.id)] = doc;
    //update url to local
    for (var element in list) {
      //add to master document
      state.masterListData.add({element.docId!: element.downloadUrl});
      //change the path
      state.selectedDocument!.imageList!
          .removeWhere((data) => data == element.oldFileName);
      state.selectedDocument!.imageList!.add(element.fileName);

      //update List Of all image
      state.selectedMasterListData!.add(element.downloadUrl);
    }
    bool isSubmitted = false;

    // update isSubmit
    List<DocumentDataModel> tempDocs = [];
    if (state.selectedDocument != null) {
      if (state.selectedDocument!.imageList != null) {
        //if no data here just update the isUpdate
        tempDocs = state.docs ?? [];

        try {
          //check if any data without null value.
          state.selectedDocument?.imageList!
              .firstWhere((element) => element != null);
          //if yes. then update isSubmitted to true

          isSubmitted = true;
        } catch (e) {
          //set it to false. because there is at least 1 data
          isSubmitted = false;
        }

        tempDocs[tempDocs.indexWhere(
                (element) => element.id == state.selectedDocument!.id)] =
            state.selectedDocument!.copyWith(isSubmited: isSubmitted);
      }
    }

    //reset deleted image list and update data
    if (state.deletedImagesName!.isNotEmpty) {
      for (var singleImage in state.deletedImagesName!) {
        //remove data from master list
        state.selectedMasterListData!
            .removeWhere((element) => element.contains(singleImage));
      }
    }
    emit(state.copyWith(
      //clear list image
      deletedImagesName: [],
      docs: tempDocs,
      isAllRead: checkIfCanSubmit(models: tempDocs),
      selectedDocument:
          state.selectedDocument!.copyWith(isSubmited: isSubmitted),
    ));
  }

  void setupApplication(VisaApplicationModel visa) {
    //SETUP DOCUMENTS
    var docs = visa.documents!.split(',').map((e) => e.trim()).toList();
    //check the guarantor
    if (visa.guarantorDTI == false) {
      if (docs.contains('A1') && docs.contains('A5')) {
      } else {
        docs.addAll(['A1', 'A5']);
      }
    } else {
      docs.removeWhere((element) => element == 'A1' || element == 'A5');
    }

    var documentModel = Storage().loadDocument().toList();
    // var documentModel =
    //     documents.map((e) => Docum entDataModel.fromJson(e)).toList();

    List<DocumentDataModel>? modelsDocument = [];

    for (var element in docs) {
      var totalImage = 0;
      final selected = documentModel.firstWhere(
        (single) => single.id == element.trim(),
      );
      List<String?> images = [];
      for (var i = 0; i < selected.numberOfDocs!; i++) {
        images.add(null);
      }

      modelsDocument.add(selected.copyWith(
        imageList: images,
      ));
    }

    if (visa.documentsData != null) {
      for (var documentFromVisa in visa.documentsData!) {
        try {
          DocumentDataModel? needUpdatedData;
          try {
            needUpdatedData = modelsDocument.firstWhere(
                (element) => element.id!.trim() == documentFromVisa.id!.trim());
          } catch (e) {
            //skip this.
          }

          if (needUpdatedData != null) {
            needUpdatedData.imageList!
                .removeRange(0, documentFromVisa.imageList!.length);
            needUpdatedData.imageList!.addAll(documentFromVisa.imageList!);

            modelsDocument[modelsDocument.indexWhere(
                    (element) => element.id == needUpdatedData!.id)] =
                needUpdatedData.copyWith(isSubmited: true);
          }
        } on Exception catch (e) {
          print(e);
        }
      }
    }

    emit(state.copyWith(
      visa: visa,
      docs: modelsDocument,
      isAllRead: checkIfCanSubmit(models: modelsDocument),
    ));
  }
}

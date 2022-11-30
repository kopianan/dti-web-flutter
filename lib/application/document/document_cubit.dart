import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'document_state.dart';
part 'document_cubit.freezed.dart';

@Injectable()
class DocumentCubit extends Cubit<DocumentState> {
  DocumentCubit() : super(DocumentState.initial());
  void addNewPhotoDocument(String path, int index) {
    var list = state.selectedDocument!.imageList;

    list![index] = path;

    emit(state.copyWith.selectedDocument!(imageList: list));
  }

  void removePhotoDocument(String path, int index) {
    List<String?>? lists = [];
    List<String>? deletedImage = [];
    lists = state.selectedDocument!.imageList;
    if (!path.contains('/')) {
      //get deleted images
      deletedImage = state.deletedImagesName;
      //add new item on deleted image
      deletedImage!.add(path);
    }
    //remove image from current view
    lists!.removeWhere((element) => element == path);
    lists.add(null);
    //update data
    state.copyWith(
        selectedDocument: state.selectedDocument!.copyWith(imageList: lists),
        deletedImagesName: deletedImage);

    print(state.deletedImagesName);
  }

  void updateSelectedIndex(int index) {
    try {
      emit(state.copyWith(
        selectedIndex: index,
        selectedDocument: state.docs![index],
      ));
    } catch (e) {}
  }

  void updateDocumentStatus() {
    final docs = state.docs;
    final doc = state.selectedDocument!.copyWith(isSubmited: true);

    docs![docs.indexWhere(
        (element) => element.id == state.selectedDocument!.id)] = doc;

    emit(state.copyWith(docs: docs, selectedDocument: doc));
  }

  void setupApplication(VisaApplicationModel visa) {
    //SETUP DOCUMENTS
    final docs = visa.documents!.split(',').map((e) => e.trim()).toList();

    final documents = (documentRaw['document_list'] as List);
    var documentModel =
        documents.map((e) => DocumentDataModel.fromJson(e)).toList();

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
    print(visa.applicationID);
    if (visa.documentsData != null) {
      for (var documentFromVisa in visa.documentsData!) {
        try {
          var needUpdatedData = modelsDocument.firstWhere(
              (element) => element.id!.trim() == documentFromVisa.id!.trim());

          needUpdatedData.imageList!
              .removeRange(0, documentFromVisa.imageList!.length);
          needUpdatedData.imageList!.addAll(documentFromVisa.imageList!);

          modelsDocument[modelsDocument
                  .indexWhere((element) => element.id == needUpdatedData.id)] =
              needUpdatedData.copyWith(isSubmited: true);
        } on Exception catch (e) {
          print(e);
        }
      }
    }
    emit(state.copyWith(visa: visa, docs: modelsDocument));
  }
}

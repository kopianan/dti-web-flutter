import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/single_visa_response.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/domain/update/i_update_application.dart';
import 'package:dti_web/domain/update/image_upload_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_application_state.dart';
part 'update_application_cubit.freezed.dart';

@Injectable()
class UpdateApplicationCubit extends Cubit<UpdateApplicationState> {
  UpdateApplicationCubit(this.iUpdateApplication)
      : super(const UpdateApplicationState.initial());
  IUpdateApplication iUpdateApplication;
  void deleteSingleImage(
    String imageName,
    String docId,
    String appId,
  ) async {
    emit(const UpdateApplicationState.onLoading());
    final result =
        await iUpdateApplication.deleteSingleImage(imageName, docId, appId);
    result.fold(
      (l) => emit(UpdateApplicationState.onError(l)),
      (r) => emit(UpdateApplicationState.onDeleteSingleImage(r)),
    );
  }

  void uploadImages(VisaApplicationModel visa, DocumentDataModel document,
      List<String> deletedImageName,
      {Map<String, dynamic>? imageCollection}) async {
    emit(const UpdateApplicationState.onLoading());
    //Remove null data on list
    // var imageList = document.imageList!;
    // imageList.removeWhere((element) => element == null);
    //=====Null is gone ======

    try {
      final data = await iUpdateApplication.uploadImagesAndUpdateData(
        visa,
        document,
        deletedImageName,
        imageCollection: imageCollection,
      );
      data.fold(
        (l) => emit(UpdateApplicationState.onError(l.toString())),
        (r) => emit(UpdateApplicationState.onUploadImageComplete(r)),
      );
    } on Exception catch (e) {
      emit(UpdateApplicationState.onError(e.toString()));
    }
  }

  void createUserApplication(QuestionnaireModel lastQuestionnaire) async {
    emit(const UpdateApplicationState.onLoading());
    final result = lastQuestionnaire.results;
    final newVisa = VisaApplicationModel(
        title: result!.visaTitle,
        subTitle: result.visaSubTitle,
        entry: result.visaEntry,
        price: 0,
        currency: 'Rp',
        documents: result.documents,
        status: 'Draft',
        inIndonesia: true);

    try {
      final data =
          await iUpdateApplication.createNewApplicationDocument(newVisa);
      log(data.toString());
      data.fold(
        (l) {
          emit(UpdateApplicationState.onError(l));
        },
        (r) async {
          try {
            final data = await _getUserApplicationById(r);
            emit(UpdateApplicationState.onCreateApplication(data));
          } on Exception catch (e) {
            emit(UpdateApplicationState.onError(e.toString()));
          }
        },
      );
    } on Exception catch (e) {
      emit(UpdateApplicationState.onError(e.toString()));
    }

    //update result
  }

  void createUserApplicationVOA(VisaApplicationModel visa) async {
    emit(const UpdateApplicationState.onLoading());

    try {
      final data = await iUpdateApplication.createNewApplicationDocument(visa);
      log(data.toString());
      data.fold(
        (l) {
          emit(UpdateApplicationState.onError(l));
        },
        (r) async {
          try {
            final data = await _getUserApplicationById(r);
            emit(UpdateApplicationState.onCreateApplication(data));
          } on Exception catch (e) {
            emit(UpdateApplicationState.onError(e.toString()));
          }
        },
      );
    } on Exception catch (e) {
      emit(UpdateApplicationState.onError(e.toString()));
    }

    //update result
  }

  void updateMultiVisaDuration(String duration, String firebaseDocId) async {
    emit(const UpdateApplicationState.onLoading());
    final result =
        await iUpdateApplication.updateMultiVisa(duration, firebaseDocId);
    result.fold(
      (l) => emit(UpdateApplicationState.onError(l)),
      (r) => emit(UpdateApplicationState.onUpdateMultiVisa(r)),
    );
  }

  void updateGuaranotr(VisaApplicationModel visa) async {
    emit(const UpdateApplicationState.onLoading());
    final result = await iUpdateApplication.updateGuarantor(visa);
    result.fold(
      (l) => emit(UpdateApplicationState.onError(l)),
      (r) => emit(const UpdateApplicationState.onUpdateGuarantor()),
    );
  }

  void uploadParticularData(VisaApplicationModel visaApps) async {
    //remove null

    final jsonData = visaApps.toJson();
    jsonData.removeWhere((key, value) => value == null);
    emit(const UpdateApplicationState.onLoading());
    final result = await iUpdateApplication.updateParticularData(visaApps);
    result.fold(
      (l) => emit(UpdateApplicationState.onError(l)),
      (r) => emit(const UpdateApplicationState.onUpdateApplication()),
    );
  }

  void updateVOAData(VisaApplicationModel visaApps) async {
    //remove null

    final jsonData = visaApps.toJson();
    jsonData.removeWhere((key, value) => value == null);
    emit(const UpdateApplicationState.onLoading());
    final result = await iUpdateApplication.updateVoaData(visaApps);
    result.fold(
      (l) => emit(UpdateApplicationState.onError(l)),
      (r) => emit(const UpdateApplicationState.onUpdateApplication()),
    );
  }

  Future<VisaApplicationModel> _getUserApplicationById(String id) async {
    final result = await iUpdateApplication.getUserApplicationById(id);
    return result.fold((l) => throw (Exception(l)), (r) => r);
  }

  void getUserApplication(String firebaseDocId) async {
    emit(UpdateApplicationState.onLoading());

    final result =
        await iUpdateApplication.getUserApplicationById(firebaseDocId);
    result.fold(
      (l) => emit(UpdateApplicationState.onError(l)),
      (r) => emit(UpdateApplicationState.onGetSingleApplication(r)),
    );
  }

  void getUserApplicationWithImages(String firebaseDocId) async {
    emit(const UpdateApplicationState.onLoading());

    final result = await iUpdateApplication
        .getUserApplicationByIdWithImages(firebaseDocId);
    result.fold(
      (l) => emit(UpdateApplicationState.onError(l)),
      (r) => emit(UpdateApplicationState.onGetSingleApplicationWithImage(r)),
    );
  }

  void submitVisaApps(String firebaseDocId) async {
    emit(UpdateApplicationState.onLoading());

    final result = await iUpdateApplication.submitVisa(firebaseDocId);
    try {
      result.fold(
        (l) => emit(UpdateApplicationState.onError(l.toString())),
        (r) => emit(UpdateApplicationState.onSubmitApplication(r)),
      );
    } on Exception catch (e) {
      emit(UpdateApplicationState.onError(e.toString()));
    }
  }
}

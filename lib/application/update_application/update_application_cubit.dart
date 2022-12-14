import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/single_visa_response.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/domain/update/i_update_application.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_application_state.dart';
part 'update_application_cubit.freezed.dart';

@Injectable()
class UpdateApplicationCubit extends Cubit<UpdateApplicationState> {
  UpdateApplicationCubit(this.iUpdateApplication)
      : super(UpdateApplicationState.initial());
  IUpdateApplication iUpdateApplication;

  void uploadImages(
    VisaApplicationModel visa,
    DocumentDataModel document,
    List<String> deletedImageName,
  ) async {
    emit(UpdateApplicationState.onLoading());
    //Remove null data on list
    // var imageList = document.imageList!;
    // imageList.removeWhere((element) => element == null);
    //=====Null is gone ======
    print(document.imageList);

    try {
      final data = await iUpdateApplication.uploadImagesAndUpdateData(
          visa, document, deletedImageName);

      data.fold(
        (l) => emit(UpdateApplicationState.onError(l.toString())),
        (r) => emit(const UpdateApplicationState.onUploadImageComplete()),
      );
    } on Exception catch (e) {
      emit(UpdateApplicationState.onError(e.toString()));
    }
  }

  void createUserApplication(QuestionnaireModel lastQuestionnaire) async {
    log(lastQuestionnaire.results.toString(), name: "RESULTS");

    emit(UpdateApplicationState.onLoading());
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
    log(jsonData.toString(), name: "REMOVED NULL");
    emit(const UpdateApplicationState.onLoading());
    final result = await iUpdateApplication.updateParticularData(visaApps);
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
    emit(UpdateApplicationState.onLoading());

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

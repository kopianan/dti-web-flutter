import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/domain/application/i_application.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'application_state.dart';
part 'application_cubit.freezed.dart';

@injectable
class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit(this.iApplication) : super(ApplicationState.initial());

  final IApplication iApplication;

  void setupApplication(VisaApplicationModel visa) {
    emit(state.copyWith(
      visaApplicationModel: visa,
    ));
  }

  void updateData(List<DocumentDataModel> documents) async {
    emit(state.copyWith(documnets: documents));
  }

  void updateDocument(DocumentDataModel document, Uint8List fileBytes) {
    final index = state.documnets!.indexOf(document);

    final file = File.fromRawPath(fileBytes);

    state.documnets![index].imageList!.add(file.path);

    //  state.documnets![ state.documnets!.indexWhere((element) => element.id == document.id)] = selectedData;

    emit(state);
  }

  void createUserApplication(QuestionnaireModel lastQuestionnaire) async {
    log(lastQuestionnaire.results.toString(), name: "RESULTS");
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
    log(newVisa.toJson().toString());
    emit(state.copyWith(
      onLoading: true,
      visaApplicationModel: newVisa,
    ));
    try {
      final data = await iApplication.createNewApplicationDocument(newVisa);
      data.fold(
        (l) {
          emit(state.copyWith(onLoading: false, onError: l));
        },
        (r) {
          print(r);
          emit(state.copyWith(onLoading: false, onError: null, onSuccess: r));
        },
      );
    } on Exception catch (e) {
      emit(state.copyWith(
        onLoading: false,
        onError: e.toString(),
      ));
    }

    //update result
  }

  void updateNationality(String nationality) {
    emit(state.copyWith(
        visaApplicationModel:
            state.visaApplicationModel!.copyWith(nationality: nationality)));
  }

  void updatePhoneDialCode(CountryCode code) {
    final newData = state.visaApplicationModel!
        .copyWith(mobileCountryCode: code.code, mobileDialCode: code.dialCode);
    emit(state.copyWith(visaApplicationModel: newData));
  }

  void updatePersonalInformation1({
    required String firstName,
    required String lastName,
    required String placeOfBirth,
    required String dateOfBirth,
    required String gender,
    required String relation,
    required String mobileNumber,
    required bool deportedFlag,
    required bool overstayedFlag,
  }) async {
    var visa = state.visaApplicationModel!.copyWith(
        firstName: firstName,
        lastName: lastName,
        placeOfBirth: placeOfBirth,
        dateOfBirth: dateOfBirth,
        gender: gender,
        relationshipStatus: relation,
        deportedFlag: deportedFlag,
        mobileNumber: mobileNumber,
        overstayedFlag: overstayedFlag);
    emit(state.copyWith(
      visaApplicationModel: visa,
    ));
    log(visa.toJson().toString());
  }

  void updatePersonalInformation2({
    required String passportNumber,
    required String dateOfIssue,
    required String dateOfExpire,
    required String issuingCountry,
  }) async {
    final visa = state.visaApplicationModel!.copyWith(
        passportNumber: passportNumber,
        dateOfIssue: dateOfIssue,
        dateOfExpiration: dateOfExpire,
        issuingCountry: issuingCountry);

    emit(state.copyWith(visaApplicationModel: visa));
    log(visa.toJson().toString());
  }

  void updatePersonalInformation3({
    required String address,
    required String province,
    required String city,
    required String district,
  }) async {
    final visa = state.visaApplicationModel!.copyWith(
        address: address, province: province, city: city, district: district);

    emit(state.copyWith(visaApplicationModel: visa));
  }

  void updateUserDomicile(bool inIndonesia, String city) {
    final visa = state.visaApplicationModel!
        .copyWith(inIndonesia: inIndonesia, cityDomicile: city);

    emit(state.copyWith(visaApplicationModel: visa));
  }

  void uploadParticularData() async {
    final visa = state.visaApplicationModel!;
    log(visa.toJson().toString());
    //remove null
    final jsonData = visa.toJson();
    jsonData.removeWhere((key, value) => value == null);
    log(jsonData.toString());

    // final result = await iApplication
    //     .updateApplicationDocument(state.visaApplicationModel!);

    // result.fold(
    //   (l) => print(l),
    //   (r) => print(r),
    // );
  }
}

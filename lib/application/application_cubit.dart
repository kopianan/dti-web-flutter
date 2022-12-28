import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'application_state.dart';
part 'application_cubit.freezed.dart';

@injectable
class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(ApplicationState.initial());

  void setupDocumentsMasterData(List<Map<String, dynamic>> list) {
    emit(state.copyWith(masterListData: list));
  }

  void setupApplication(VisaApplicationModel visa) {
    //SETUP DOCUMENTS
    final docs = visa.documents!.split(',');
    final documents = (documentRaw['document_list'] as List);
    final documentModel =
        documents.map((e) => DocumentDataModel.fromJson(e)).toList();
    List<DocumentDataModel> modelsDocument = [];

    for (var element in docs) {
      final selected =
          documentModel.firstWhere((single) => single.id == element.trim());
      modelsDocument.add(selected);
    }

    emit(state.copyWith(visaApplicationModel: visa, documnets: modelsDocument));
  }

  void updateGuarantor(bool dtiGuarantor) {
    final newVisa =
        state.visaApplicationModel!.copyWith(guarantorDTI: dtiGuarantor);
    emit(state.copyWith(visaApplicationModel: newVisa));
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
    String? mobileCountryCode,
    String? mobileDialCode,
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
        overstayedFlag: overstayedFlag,
        mobileDialCode: mobileDialCode,
        mobileCountryCode: mobileCountryCode);
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

  void updatePersonalInformation4(String multiVisa) async {
    print(multiVisa); 
    emit(state.copyWith.visaApplicationModel!(multiVisaDuration: multiVisa));
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
    final visa = state.visaApplicationModel!.copyWith(
      inIndonesia: inIndonesia,
      cityDomicile: city,
    );

    emit(state.copyWith(visaApplicationModel: visa));
  }
}

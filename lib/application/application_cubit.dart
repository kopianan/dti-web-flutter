import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'application_state.dart';
part 'application_cubit.freezed.dart';

@LazySingleton()
class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(ApplicationState.initial());
  //clean first
  void cleanAll() {
    emit(ApplicationState.initial());
  }

  void setupDocumentsMasterData(List<Map<String, dynamic>> list) {
    emit(state.copyWith(masterListData: list));
  }

  void setupApplication(VisaApplicationModel visa) {
    //SETUP DOCUMENTS
    cleanAll();
    final docs = visa.documents!.split(',');
    var documentModel = Storage().loadDocument().toList();

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

  void updateData(List<DocumentDataModel> documents,
      {List<String>? list}) async {
    List<DocumentDataModel> newList = [];
    if (list != null) {
      final listData = Storage().loadDocument();
      for (var idDocument in list) {
        try {
          newList.add(listData.firstWhere(
              (element) => element.id!.trim() == idDocument.trim()));
        } catch (e) {
          //test
        }
      }
    } else {
      newList = documents;
    }

    emit(state.copyWith(documnets: newList));
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

  void updatePassportPersonalInformation(VisaApplicationModel visa) {
    emit(state.copyWith(visaApplicationModel: visa));
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
  }

  Future<void> updatePersonalInformation4B({
    required String modeOfTransportation,
    required String flightNumber,
    required String arrivalDate,
  }) async {
    final visa = state.visaApplicationModel!.copyWith(
      flightNumber: flightNumber,
      modeOfTransportation: modeOfTransportation,
      arrivalDate: arrivalDate,
    );

    emit(state.copyWith(visaApplicationModel: visa));
  }

  void updatePersonalInformation4(String multiVisa) async {
    final visa =
        state.visaApplicationModel!.copyWith(multiVisaDuration: multiVisa);
    emit(state.copyWith(visaApplicationModel: visa));
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

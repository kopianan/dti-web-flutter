import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/global/data_table_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_new_application_state.dart';
part 'create_new_application_cubit.freezed.dart';

@lazySingleton
class CreateNewApplicationCubit extends Cubit<CreateNewApplicationState> {
  CreateNewApplicationCubit() : super(CreateNewApplicationState.initial());

  void updateAllSelected(bool status) {
    var detailList = state.body;
    final newList =
        detailList.map((a) => a.copyWith(selected: status)).toList();
    emit(state.copyWith(body: newList));
  }

  void resetErrorState() {
    emit(state.copyWith(error: false));
  }

  void updateSelectedRow(int index) {
    var row = state.body[index];

    var newRow = row.copyWith(selected: !row.selected);
    var newList = state.body.toList();
    newList.removeAt(index);
    newList.insert(index, newRow);
    emit(state.copyWith(body: newList));
  }

  void resetData() {
    emit(state.copyWith(
        body: [],
        header: [],
        pickedFile: null,
        excelBytes: null,
        error: false));
  }

  void setPickedFile(FilePickerResult file) {
    emit(state.copyWith(pickedFile: file));
  }

  String _dateTimeConvert(String dateString) {
    try {
      final date = DateConverter.convertDateDefault(dateString);
      return date;
    } on Exception {
      return dateString;
    }
  }

  bool _checFalseOrTrue(String data) {
    if (data.trim().toLowerCase() == 'false') {
      return false;
    } else {
      return true;
    }
  }

  List<VisaApplicationModel> convertDataTableToModel() {
    var listOfVisa = <VisaApplicationModel>[];
    final userData = getIt<GlobalUserCubit>().state.user;
    for (var row in state.body) {
      late VisaApplicationModel visa;
      if (row.selected == true) {
        final body = row.bodyData;

        visa = VisaApplicationModel(
          
          title: body[0]?.value.toString() ?? '',
          subTitle: body[1]?.value.toString() ?? '',
          entry: body[2]?.value.toString() ?? '',
          //EMPTY
          guarantorDTI: _checFalseOrTrue(body[4]?.value.toString() ?? 'false'),
          firstName: body[6]?.value.toString() ?? '',
          lastName: body[7]?.value.toString() ?? '',
          gender: body[8]?.value.toString() ?? '',
          nationality: body[9]?.value.toString() ?? '',
          relationshipStatus: body[10]?.value.toString() ?? '',
          mobileCountryCode: body[11]?.value.toString() ?? '',
          mobileDialCode: body[12]?.value.toString() ?? '',
          mobileNumber: body[13]?.value.toString() ?? '',
          placeOfBirth: body[14]?.value.toString() ?? '',
          dateOfBirth: _dateTimeConvert(body[15]?.value.toString() ?? ''),
          motherName: body[16]?.value.toString() ?? '',
          deportedFlag: _checFalseOrTrue(body[17]?.value.toString() ?? 'false'),
          overstayedFlag:
              _checFalseOrTrue(body[18]?.value.toString() ?? 'false'),
          inIndonesia: _checFalseOrTrue(body[19]?.value.toString() ?? 'false'),
          cityDomicile: body[20]?.value.toString() ?? '',
          passportNumber: body[21]?.value.toString() ?? '',
          issuingCountry: body[22]?.value.toString() ?? '',
          dateOfIssue: _dateTimeConvert(body[23]?.value.toString() ?? ''),
          dateOfExpiration: _dateTimeConvert(body[24]?.value.toString() ?? ''),
          address: body[25]?.value.toString() ?? '',
          province: body[26]?.value.toString() ?? '',
          city: body[27]?.value.toString() ?? '',
          district: body[28]?.value.toString() ?? '',
          price: 0,
          currency: 'Rp',
          documents: body[5]?.value.toString() ?? '',
          status: 'Draft',
          userName: userData.name ?? userData.email,
        );
        listOfVisa.add(visa);
      }
    }

    return listOfVisa;
  }

  void extractExcelBytes() {
    if (state.pickedFile != null) {
      late Uint8List excelFile;
      if (kIsWeb) {
        excelFile = state.pickedFile!.files.single.bytes!;
      } else {
        excelFile =
            File(state.pickedFile!.files.single.path!).readAsBytesSync();
      }

      emit(state.copyWith(excelBytes: excelFile));
      try {
        setupTable();
      } catch (e) {
        emit(state.copyWith(excelBytes: null, error: true));
        log("ERROR EXTRACTING ");
      }
    }
  }

  String sheetName = 'Data';
  void setupTable() {
    if (state.excelBytes != null) {
      final excelInfo = Excel.decodeBytes(state.excelBytes!);
      var body = excelInfo.tables[sheetName]!.rows.toList();
      var header = body.removeAt(0).toList();
      List<DataTableModel> notSelectedBody = [];

      for (int i = 0; i < body.length; i++) {
        var e = body[i];
        final totalLength = e.length;
        final reallyNull = e.where((element) => element?.value == null).length;

        if (reallyNull >= totalLength - 1) {
          //do nothing
        } else {
          var dateOfBirth = e[15]?.value.toString();
          var dateOfIssue = e[23]?.value.toString();
          var dateOfExpiration = e[24]?.value.toString();
          e[15]?.value = convertDateOfTheField(dateOfBirth);
          e[23]?.value = convertDateOfTheField(dateOfIssue);
          e[24]?.value = convertDateOfTheField(dateOfExpiration);

          notSelectedBody.add(DataTableModel(bodyData: e, selected: false));
        }
      }
      //title
      emit(state.copyWith(header: header, body: notSelectedBody));
    }
  }

  String? convertDateOfTheField(String? date) {
    if (date != null) {
      return DateConverter.convertDateDefault(date);
    } else {
      return date;
    }
  }
}

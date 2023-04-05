import 'dart:io';

import 'package:bloc/bloc.dart';
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

  void setPickedFile(FilePickerResult file) {
    emit(state.copyWith(pickedFile: file));
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
      setupTable();
    }
  }

  String sheetName = 'Data';
  void setupTable() {
    if (state.excelBytes != null) {
      final excelInfo = Excel.decodeBytes(state.excelBytes!);
      var body = excelInfo.tables[sheetName]!.rows.toList();
      var header = body.removeAt(0).toList();
      //title
      emit(state.copyWith(header: header, body: body));
    }
  }
  //  var excel = Excel.decodeBytes(excelFile.toList());
  //                         String sheetName = 'Data';
  //                         final totalRows = excel.tables[sheetName]!.rows;
  //                         for (var i = 0; i < totalRows.length; i++) {
  //                           if (i != 0) {
  //                             for (var element in totalRows[i]) {
  //                               print(element?.value.toString());
  //                             }
  //                           }
  //                         }
}

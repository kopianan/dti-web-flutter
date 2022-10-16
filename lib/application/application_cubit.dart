import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/questionnaire/raw_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'application_state.dart';
part 'application_cubit.freezed.dart';

@injectable
class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(ApplicationState.initial());

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
}

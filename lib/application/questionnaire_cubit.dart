import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'questionnaire_state.dart';
part 'questionnaire_cubit.freezed.dart';

@lazySingleton
class QuestionnaireCubit extends Cubit<QuestionnaireState> {
  QuestionnaireCubit() : super(QuestionnaireState.initial());

  List<String> getDescriptions() {
    var desc = state.description?.toList();
    desc?.removeWhere((element) => element.isEmpty);

    return desc!.toSet().toList();
  }

  List<String> getImportant() {
    var imp = state.importantNotes?.toList();
    imp?.removeWhere((element) => element.isEmpty);
    imp?.addAll([
      "Once your application has been submitted, we will review it within 2 working days. You will get notified by us though email and push notification for any update",
      "We need at least 5 working days to process your application to get an entry / stay / working permit. We wills tart to process it once payment has been made. "
    ]);

    return imp!.toSet().toList();
  }

  void addQuestionnaireToList(QuestionnaireModel questionnaireModel) {
    var lists = state.listQuestionnaire ?? [];
    final newList = questionnaireModel.copyWith(subQuestionnaire: []);
    lists.add(newList);
    emit(state.copyWith(listQuestionnaire: lists));
  }

  void removeLastQuestionnaire() {
    var impNotes = state.importantNotes?.toList();
    var descs = state.description?.toList();
    var list = state.listQuestionnaire;
    list!.removeLast();
    impNotes!.removeLast();
    descs!.removeLast();

    emit(state.copyWith(importantNotes: impNotes, description: descs));
  }

  void updateStateNotesAndDescription() async {
    var importantNotes = <String>[];
    var description = <String>[];

    for (var element in state.listQuestionnaire!) {
      description.add(element.description ?? '');
      importantNotes.add(element.importantNotes ?? '');
    }

    emit(state.copyWith(
      importantNotes: importantNotes,
      description: description,
    ));
  }
}

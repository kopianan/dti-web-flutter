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

  void addQuestionnaireToList(QuestionnaireModel questionnaireModel) {
    var lists = state.listQuestionnaire ?? [];
    final newList = questionnaireModel.copyWith(subQuestionnaire: []);
    lists.add(newList);
    emit(state.copyWith(listQuestionnaire: lists));
  }

  void updateStateNotesAndDescription() async {
    var importantNotes = <String>[];
    var description = <String>[];
    print(state.listQuestionnaire!);

    print("TEST");
    for (var element in state.listQuestionnaire!) {
      if (element.importantNotes != null) {
        importantNotes.add(element.importantNotes!);
        importantNotes.add(
            "Once your application has been submitted, we will review it within 2 working days. You will get notified by us though email and push notification for any update");
        importantNotes.add(
            "We need at least 5 working days to process your application to get an entry / stay / working permit. We wills tart to process it once payment has been made. ");
      }
      if (element.description != null) {
        description.add(element.description!);
      }
    }

    emit(state.copyWith(
      importantNotes: importantNotes,
      description: description,
    ));
  }
}

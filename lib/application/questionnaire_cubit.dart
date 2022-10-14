import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_state.dart';
part 'questionnaire_cubit.freezed.dart';

class QuestionnaireCubit extends Cubit<QuestionnaireState> {
  QuestionnaireCubit() : super(QuestionnaireState.initial());
}

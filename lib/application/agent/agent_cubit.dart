import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/domain/agent/i_agent.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'agent_state.dart';
part 'agent_cubit.freezed.dart';

@injectable
class AgentCubit extends Cubit<AgentState> {
  AgentCubit(this.iAgent) : super(AgentState.initial());

  final dio = Dio();
  final IAgent iAgent;

  void createBulkVisaApplication(List<VisaApplicationModel> listVisa) async {
    final result = await iAgent.createBulkData(listVisa);

    result.fold(
      (l) => emit(AgentState.error(l)),
      (r) => emit(AgentState.onCreateBulkVisaSuccess(r)),
    );
  }
}

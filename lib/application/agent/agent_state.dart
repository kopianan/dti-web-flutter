part of 'agent_cubit.dart';

@freezed
class AgentState with _$AgentState {
  const factory AgentState.initial() = _Initial;
  const factory AgentState.error(String message) = _Error;
  const factory AgentState.loading() = _Loading;
  const factory AgentState.onCreateBulkVisaSuccess(String message) =
      _OnCreateBulkVisaSuccess;
}

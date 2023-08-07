import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dti_web/domain/agent/i_agent.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/domain/dashboard/i_dashboard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'agent_state.dart';
part 'agent_cubit.freezed.dart';

@injectable
class AgentCubit extends Cubit<AgentState> {
  AgentCubit(this.iAgent, this.iDashboard) : super(const AgentState.initial());

  final dio = Dio();
  final IAgent iAgent;
  final IDashboard iDashboard;

  void downloadExcelTemplate(String url) async {}
  void createBulkVisaApplication(List<VisaApplicationModel> listVisa) async {
    emit(const AgentState.loading());
    final result = await iAgent.createBulkData(listVisa);

    result.fold(
      (l) => emit(AgentState.error(l)),
      (r) => emit(AgentState.onCreateBulkVisaSuccess(r)),
    );
  }

  void deleteApplicationAndPassport(List<SimpleVisaModel> deletedApps) async {
    emit(const AgentState.loading());
    //seperate the visa type
    List<String> passport = [];
    List<String> application = [];
    for (var element in deletedApps) {
      if (element.title!.toLowerCase().contains('passport')) {
        passport.add(element.firebaseDocId!);
      } else {
        application.add(element.firebaseDocId!);
      }
    }

    //delete passport

    final listRequestPassport =
        passport.map((e) => iDashboard.deleteSinglePassport(e)).toList();
    final resultPassport = await Future.wait(listRequestPassport);
    final listRequestApplication =
        application.map((e) => iDashboard.deleteApplication(e)).toList();
    final resultApplication = await Future.wait(listRequestApplication);

    emit(const AgentState.onDeleteBulkSuccess());

    // final result = await iDashboard.dele
  }
}

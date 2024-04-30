import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_data_state.dart';
part 'dashboard_data_cubit.freezed.dart';

@singleton
class DashboardDataCubit extends Cubit<DashboardDataState> {
  DashboardDataCubit() : super(DashboardDataState.initial());
}

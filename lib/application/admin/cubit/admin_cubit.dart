import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_state.dart';
part 'admin_cubit.freezed.dart';

@injectable
class AdminCubit extends Cubit<AdminState> {
  AdminCubit() : super(const AdminState.initial());
}

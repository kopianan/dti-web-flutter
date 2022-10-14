import 'package:bloc/bloc.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/auth/i_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuth) : super(AuthState.initial());
  final IAuth iAuth;

  final Storage storage = Storage();
  void loginWithEmailAndPassword(String email, String password) async {
    emit(AuthState.loading());

    final result =
        await iAuth.loginAndGetToken(email: email, password: password);

    //SAVE DATA TO LOCALE
    result.fold(
      (l) => AuthState.error(l),
      (r) async {
        await storage.saveToken(r);
        
        emit(AuthState.onLoginSuccess(r));
      },
    );
  }
}

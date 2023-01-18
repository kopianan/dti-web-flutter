import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/auth/i_auth.dart';
import 'package:dti_web/domain/auth/user_data.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@Injectable()
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuth) : super(const AuthState.initial());
  final IAuth iAuth;

  final Storage storage = Storage();

  void signOut() async {
    emit(const AuthState.loading());

    await storage.deleteStorage();

    emit(const AuthState.onSignOut());
  }

  void checkSession() async {
    emit(const AuthState.loading());
    await Future.delayed(Duration(seconds: 0));
    final token = storage.getToken();

    await Future.delayed(Duration(seconds: 0));

    if (token != null) {
      //check token expiration
      bool isExpired = JwtDecoder.isExpired(token);
      if (isExpired) {
        emit(const AuthState.unAuthorized());
      }else{
        emit(const AuthState.authorized());
      }
    } else {
      emit(const AuthState.unAuthorized());
    }
  }

  void getUserData() async {
    emit(const AuthState.loading());
    final result = await iAuth.getUserData();
    result.fold(
      (l) => emit(AuthState.onError(l)),
      (r) => emit(AuthState.onGetUserData(r)),
    );
  }

  void loginWithEmailAndPassword(String email, String password) async {
    emit(const AuthState.loading());

    final result =
        await iAuth.loginAndGetToken(email: email, password: password);

    //SAVE DATA TO LOCALE
    result.fold(
      (l) => emit(AuthState.error(l)),
      (r) async {
        await storage.saveToken(r);
        emit(AuthState.onLoginSuccess(r));
      },
    );
  }

  void loginUsingGoogle() async {
    emit(AuthState.loading());

    final result = await iAuth.loginWithGoogle();

    //SAVE DATA TO LOCALE
    result.fold(
      (l) => emit(AuthState.onError(l)),
      (r) async {
        await storage.saveToken(r);
        emit(AuthState.onLoginSuccess(r));
      },
    );
  }

  void loginUsingFacebook() async {
    emit(AuthState.loading());

    final result = await iAuth.signinUsingFacebook();

    //SAVE DATA TO LOCALE
    result.fold(
      (l) => emit(AuthState.onError(l)),
      (r) async {
        await storage.saveToken(r);
        emit(AuthState.onLoginSuccess(r));
      },
    );
  }

  void resetPassword(String email) async {
    emit(const AuthState.loading());

    final result = await iAuth.resetPassword(email: email);
    result.fold(
      (l) => emit(AuthState.onError(l)),
      (r) => emit(AuthState.onResetPassword(r)),
    );
  }

  void registerWithEmailAndPassword(
    String email,
    String password,
    String confirmPassword,
  ) async {
    emit(const AuthState.loading());

    final result = await iAuth.registerNewUser(
        email: email, password: password, confirmPassword: confirmPassword);
    //SAVE DATA TO LOCALE
    result.fold(
      (l) => emit(AuthState.onError(l)),
      (r) async {
        await storage.saveToken(r);
        emit(AuthState.onRegisterSuccess(r));
      },
    );
  }
}

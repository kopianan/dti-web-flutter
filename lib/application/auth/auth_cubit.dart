import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/auth/i_auth.dart';
import 'package:dti_web/domain/auth/user_data.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@Injectable()
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuth) : super(const AuthState.initial());
  final IAuth iAuth;

  final Storage storage = Storage();
  void clean() {
    emit(AuthState.initial());
  }

  void signOut() async {
    emit(const AuthState.loading());

    await storage.deleteStorage();
    storage.removeBrowser();
    emit(const AuthState.onSignOut());
  }

  void checkSession() async {
    emit(const AuthState.loading());

    await Future.delayed(const Duration(seconds: 0));
    final token = storage.getToken();

    await Future.delayed(const Duration(seconds: 0));

    if (token != null) {
      //check token expiration
      bool isExpired = JwtDecoder.isExpired(token);
      if (isExpired) {
        emit(const AuthState.unAuthorized());
      } else {
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
      (r) async {
        await Storage().saveUser(r);
        emit(AuthState.onGetUserData(r));
      },
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
        await storage.saveToken(r.token);

        if (r.isNewUser) {
          emit(AuthState.onRegisterSuccess(r.token));
        } else {
          //get user data
          final result = await iAuth.getUserData();
          result.fold(
            (l) => null,
            (userData) {
              if (userData.mobileNumber != null) {
                emit(AuthState.onLoginSuccess(r.token));
              } else {
                emit(AuthState.onLoginSuccessWithoutPhoneNumber(r.token));
              }
            },
          );
        }
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

  void registerWithEmailAndPassword(String email, String password,
      String confirmPassword, String name) async {
    emit(const AuthState.loading());

    final result = await iAuth.registerNewUser(
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        name: name);
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

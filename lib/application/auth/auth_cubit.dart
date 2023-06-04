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

import 'package:universal_html/html.dart' as html;
part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@Injectable()
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuth) : super(const AuthState.initial());
  final IAuth iAuth;

  final Storage storage = Storage();
  void clean() {
    emit(const AuthState.initial());
  }

  void signOut() async {
    emit(const AuthState.loading());

    await storage.deleteStorage();
    storage.removeBrowser();
    emit(const AuthState.onSignOut());
  }

  String? _isFromPhone() {
    String userAgent = html.window.navigator.userAgent.toString().toLowerCase();
    log(userAgent);
    if (userAgent.contains("iphone") ||
        userAgent.contains("ipad") ||
        html.window.navigator.platform!.toLowerCase().contains("macintel") &&
            html.window.navigator.maxTouchPoints! > 0) {
      return 'iphone';
    } else if (userAgent.contains("android")) {
      return 'android';
    } else {
      return null;
    }
  }

  void checkSession() async {
    emit(const AuthState.loading());

    var userAgent = _isFromPhone();
    if (userAgent != null) {
      await Future.delayed(const Duration(seconds: 0));

      emit(AuthState.isOpenFromPhone(userAgent));
    } else {
      await Future.delayed(const Duration(seconds: 0));
      final token = storage.getToken();

      await Future.delayed(const Duration(seconds: 0));

      if (token != null) {
        //check token expiration
        bool isExpired = JwtDecoder.isExpired(token);
        if (isExpired) {
          emit(const AuthState.unAuthorized());
        } else {
          final user = storage.getLocalUserData();
          if (user == null) {
            emit(const AuthState.unAuthorized());
          } else {
            emit(AuthState.authorized(user));
          }
        }
      } else {
        emit(const AuthState.unAuthorized());
      }
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
        final result = await iAuth.getUserData();

        result.fold(
          (l) => null,
          (userData) {
            storage.saveUser(userData);
            emit(AuthState.onLoginSuccess(r, userData));
          },
        );
      },
    );
  }

  void loginUsingGoogle({GoogleSignInAccount? accountUser}) async {
    emit(const AuthState.loading());
    final result = await iAuth.loginWithGoogle(accountUser: accountUser);

    //SAVE DATA TO LOCALE
    result.fold(
      (l) => emit(AuthState.onError(l)),
      (r) async {
        await storage.saveToken(r.token);

        if (r.isNewUser) {
          emit(AuthState.onRegisterSuccess(r.token));
        } else {
          final result = await iAuth.getUserData();
          result.fold(
            (l) => null,
            (userData) {
              if (userData.mobileNumber != null) {
                emit(AuthState.onLoginSuccess(r.token, userData));
              } else {
                emit(AuthState.onLoginSuccessWithoutPhoneNumber(
                    r.token, userData));
              }
            },
          );
        }
      },
    );
  }

  void loginUsingFacebook() async {
    emit(const AuthState.loading());

    final result = await iAuth.signinUsingFacebook();

    //SAVE DATA TO LOCALE
    result.fold(
      (l) => emit(AuthState.onError(l)),
      (r) async {
        await storage.saveToken(r);
        emit(AuthState.onLoginSuccess(r, UserData(isAgent: false)));
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

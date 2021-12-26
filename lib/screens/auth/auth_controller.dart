import 'dart:async';
import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';
import 'package:gymcompanion/screens/auth/auth_state.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

final authControllerProvider = StateNotifierProvider.autoDispose<AuthController, AuthState>((ref) {
  return AuthController(ref.read);
});

class AuthController extends StateNotifier<AuthState> {
  AuthController(this._read)
      : super(
          AuthState(
            isLoading: false,
            userName: '',
            email: '',
            password: '',
            isLoginPage: true,
          ),
        );

  final Reader _read;

  void changeEmail(String email) {
    state = state.copyWith(
      email: email,
      errorMessage: null,
    );
  }

  void changePassword(String password) {
    state = state.copyWith(
      password: password,
    );
  }

  void changeUserName(String userName) => state = state.copyWith(userName: userName);

  void switchToRegisterPage() => state = state.copyWith(isLoginPage: false);

  void switchToLoginPage() => state = state.copyWith(isLoginPage: true);

  Future<void> signInWithEmailAndPassword(BuildContext context) async {
    state = state.copyWith(isLoading: true);

    await _read(authServiceProvider)
        .signInWithEmailAndPassword(email: state.email, password: state.password)
        .then((_) async {
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).pushNamed('/mainnavigation');
    }).catchError((error) {
      state = state.copyWith(
        isLoading: false,
      );

      Flushbar(
        icon: Icon(Icons.error_outline, color: ConstColors.error),
        message: 'Email oder Passwort Falsch',
        backgroundColor: ConstColors.buttonColor,
        messageColor: ConstColors.error,
        duration: Duration(seconds: 3),
      ).show(context);
    });
  }

  Future<void> signInAnonymously() async {
    state = state.copyWith(isLoading: true);

    await _read(authServiceProvider).signInAnonymously().then((_) async {
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).pushNamed('/mainnavigation');
    }).catchError((error) {
      state = state.copyWith(
        isLoading: false,
      );
    });
  }

  Future<void> createUserWithEmailAndPassword(BuildContext context) async {
    state = state.copyWith(isLoading: true);

    await _read(authServiceProvider)
        .createUserWithEmailAndPassword(email: state.email, password: state.password)
        .then((UserCredential userCredential) async {
      await _read(userProvider.notifier)
          .createUser(userId: userCredential.user!.uid, userName: state.userName);
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).pushNamed('/mainnavigation');
    }).catchError((error) async {
      state = state.copyWith(
        isLoading: false,
      );
    });
  }
}

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
            height: 0,
            weight: 0,
            birthdate: DateTime.now(),
          ),
        );

  final Reader _read;

  void changeEmail(String email) => state = state.copyWith(email: email);

  void changePassword(String password) => state = state.copyWith(password: password);

  void changeWeight(String weight) => state = state.copyWith(weight: int.parse(weight));

  void changeHeight(String height) => state = state.copyWith(height: int.parse(height));

  void changeBirthdate(DateTime birthdate) => state = state.copyWith(birthdate: birthdate);

  void changeUserName(String userName) => state = state.copyWith(userName: userName);

  void switchToRegisterPage() => state = state.copyWith(isLoginPage: false);

  void switchToLoginPage() => state = state.copyWith(isLoginPage: true);

  Future<void> signInWithEmailAndPassword(BuildContext context) async {
    state = state.copyWith(isLoading: true);

    await _read(authServiceProvider)
        .signInWithEmailAndPassword(email: state.email, password: state.password)
        .then((_) async {
      await _read(userProvider.notifier).getUser();
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

  Future<void> createUserWithEmailAndPassword(BuildContext context) async {
    state = state.copyWith(isLoading: true);

    try {
      UserCredential userCredential = await _read(authServiceProvider)
          .createUserWithEmailAndPassword(email: state.email, password: state.password);

      await _read(userProvider.notifier).createUser(
        userId: userCredential.user!.uid,
        userName: state.userName,
        weight: state.weight,
        height: state.height,
        birthdate: state.birthdate,
      );
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).pushNamed('/mainnavigation');
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
      state = state.copyWith(
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
      );
    }
  }
}

import 'dart:async';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/auth_provider.dart';
import 'package:gymcompanion/screens/auth/auth_state.dart';

final authControllerProvider = StateNotifierProvider.autoDispose<AuthController, AuthState>((ref) {
  return AuthController(ref.read);
});

class AuthController extends StateNotifier<AuthState> {
  AuthController(this._read)
      : super(
          AuthState(
            isLoading: false,
            email: '',
            password: '',
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
      errorMessage: null,
    );
  }

  Future<void> signIn(BuildContext context) async {
    state = state.copyWith(isLoading: true);

    await _read(authRepositoryProvider).signInAnonymously().then((_) async {
      state = state.copyWith(isLoading: false);
      await context.router.pushNamed('/mainnavigation');
    }).catchError((error) {
      state = state.copyWith(
        isLoading: false,
      );
    });
  }
}

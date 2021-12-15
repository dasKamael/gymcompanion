import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/providers.dart';
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

  Future<void> signInWithEmailAndPassword() async {
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
}

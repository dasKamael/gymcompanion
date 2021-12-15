import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

final initProvider = Provider((ref) {
  return InitInteractor(
    ref.watch(userStateProvider),
    ref.watch(authServiceProvider),
  );
});

class InitInteractor {
  InitInteractor(
    this._user,
    this._auth,
  ) {
    initUser();
  }

  final UserStateProvider _user;
  final AuthServiceImpl _auth;

  Future<void> initUser() async {
    if (await _auth.isAuthenticated()) {
      final String _token = await _auth.getToken();
      log('ApiToken: $_token');

      await _user.getUser();
    }
  }
}

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/auth_provider.dart';

class UserStateNotifier extends StateNotifier<User?> {
  UserStateNotifier(this._read) : super(null) {
    _authStateChangesSubscription.cancel();
    _authStateChangesSubscription =
        _read(authRepositoryProvider).authStateChanges.listen((user) => state = user);
  }

  final Reader _read;
  late final StreamSubscription<User?> _authStateChangesSubscription;

  Future<void> appInit() async {
    final user = _read(authRepositoryProvider).getCurrentUser();
    if (user == null) {
      await _read(authRepositoryProvider).signInAnonymously();
    }
  }

  Future<void> signOut() async {
    await _read(authRepositoryProvider).signOut();
  }

  @override
  void dispose() {
    _authStateChangesSubscription.cancel();
    super.dispose();
  }
}

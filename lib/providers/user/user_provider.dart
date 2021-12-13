import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/auth_provider.dart';

class UserStateNotifier extends StateNotifier<User?> {
  UserStateNotifier(this._read) : super(null) {
    getUser();
  }

  final Reader _read;

  Future<void> getUser() async {}

  @override
  void dispose() {
    super.dispose();
  }
}

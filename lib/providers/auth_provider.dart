import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';
import 'package:gymcompanion/services/auth/auth_repository.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(ref.read),
);

final userStateProvider = StateProvider<UserStateNotifier>(
  (ref) => UserStateNotifier(ref.read),
);

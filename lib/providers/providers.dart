import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';
import 'package:gymcompanion/routes.gr.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

final routeProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

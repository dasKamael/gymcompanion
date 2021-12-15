import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/services/auth/auth_repository.dart';

import '../../routes.gr.dart';

final authServiceProvider = Provider<AuthServiceImpl>(
  (ref) => AuthServiceImpl(ref.read),
);

class AuthServiceImpl implements AuthService {
  AuthServiceImpl(this._read);

  final Reader _read;

  @override
  Future<String> getToken() async {
    return _read(firebaseAuthProvider).currentUser!.getIdToken();
  }

  @override
  Stream<User?> get authStateChanges => _read(firebaseAuthProvider).authStateChanges();

  @override
  User? getCurrentUser() => _read(firebaseAuthProvider).currentUser;

  @override
  Future<void> signInAnonymously() async {
    await _read(firebaseAuthProvider).signInAnonymously();
  }

  @override
  Future<void> signInWithEmailAndPassword({required String email, required String password}) async {
    await _read(firebaseAuthProvider).signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    await _read(firebaseAuthProvider)
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _read(firebaseAuthProvider).signOut();
    _read(routeProvider).popUntilRouteWithName('/');
    await _read(routeProvider).push(AuthRoute());
  }

  @override
  Future<bool> isAuthenticated() async {
    final User? firebaseUser = FirebaseAuth.instance.currentUser;
    return firebaseUser != null;
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/auth_provider.dart';
import 'package:gymcompanion/services/auth/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._read);

  final Reader _read;

  @override
  Future<String> getToken() async {
    return FirebaseAuth.instance.currentUser!.getIdToken();
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
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _read(firebaseAuthProvider).signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _read(firebaseAuthProvider).signOut();
    // await _read(firebaseAuthProvider).signInAnonymously();
  }
}

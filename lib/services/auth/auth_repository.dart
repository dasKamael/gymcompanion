import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Stream<User?> get authStateChanges;
  Future<void> signInAnonymously();
  Future<void> signInWithEmailAndPassword(String email, String password);
  User? getCurrentUser();
  Future<String> getToken();
  Future<void> signOut();
}

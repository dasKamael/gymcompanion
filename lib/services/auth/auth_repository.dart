import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Stream<User?> get authStateChanges;
  Future<void> signInAnonymously();
  Future<void> signInWithEmailAndPassword({required String email, required String password});
  Future<void> createUserWithEmailAndPassword({required String email, required String password});
  User? getCurrentUser();
  Future<String> getToken();
  Future<void> signOut();
  Future<bool> isAuthenticated();
}

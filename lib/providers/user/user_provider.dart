import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/providers/auth/auth_provider.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/providers/user/user_state.dart';

final userProvider = StateNotifierProvider<UserStateProvider, UserState>(
  (ref) => UserStateProvider(ref.read),
);

class UserStateProvider extends StateNotifier<UserState> {
  UserStateProvider(this._read)
      : super(UserState(
          firebase_id: '',
          userName: '',
          birthdate: Timestamp.now(),
        ));

  final Reader _read;

  Future<void> getUser() async {
    CollectionReference users = _read(firestoreProvider).collection(
      FirestoreCollections.userCollection,
    );

    final userId = _read(authServiceProvider).getCurrentUser()!.uid;

    await users
        .doc(userId)
        .get()
        .then((DocumentSnapshot data) {
          Map<String, dynamic> user = data.data() as Map<String, dynamic>;
          state = state.copyWith(
            firebase_id: userId,
            userName: user['user_name'],
            height: user['height'],
            weight: user['weight'],
            birthdate: user['birthdate'],
          );
        })
        .then((_) => print('User fetched'))
        .catchError((error) => print('Failed to get user: $error'));
  }

  Future<void> createUser({
    required String userId,
    required String userName,
    required int weight,
    required int height,
    required DateTime birthdate,
  }) async {
    CollectionReference users = _read(firestoreProvider).collection(
      FirestoreCollections.userCollection,
    );

    await users
        .doc(userId)
        .set({
          'user_name': userName,
          'weight': weight,
          'height': height,
          'birthdate': birthdate,
        })
        .then((_) => print('User Added'))
        .catchError((error) => print('Failed to add user: $error'));

    state = state.copyWith(userName: userName, firebase_id: userId);
  }
}

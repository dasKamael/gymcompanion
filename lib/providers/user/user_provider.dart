import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/providers/user/user_state.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

final userProvider = StateNotifierProvider<UserStateProvider, UserState>(
  (ref) => UserStateProvider(ref.read),
);

class UserStateProvider extends StateNotifier<UserState> {
  UserStateProvider(this._read)
      : super(UserState(
          firebase_id: '',
          userName: '',
        ));

  final Reader _read;

  Future<void> getUser() async {
    final firebaseId = _read(authServiceProvider).getCurrentUser()!.uid;

    CollectionReference users =
        _read(firestoreProvider).collection(FirestoreCollections.userCollection);

    await users
        .doc(firebaseId)
        .get()
        .then((DocumentSnapshot user) => state = state.copyWith(
              firebase_id: firebaseId,
              userName: user.get('user_name'),
            ))
        .catchError((error) => print('Failed to get user: $error'));
  }

  Future<void> createUser({required String userId, required String userName}) async {
    CollectionReference users =
        _read(firestoreProvider).collection(FirestoreCollections.userCollection);

    await users
        .doc(userId)
        .set({'user_name': userName})
        .then((_) => print('User Added'))
        .catchError((error) => print('Failed to add user: $error'));

    state = state.copyWith(userName: userName, firebase_id: userId);
  }
}

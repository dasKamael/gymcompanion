import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/providers/user/user_state.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

final userProvider = StateNotifierProvider<UserStateProvider, UserState>(
  (ref) => UserStateProvider(
    ref.read,
    () => ref.read(dioProvider.future),
  ),
);

class UserStateProvider extends StateNotifier<UserState> {
  UserStateProvider(this._read, this._dioProvider)
      : super(UserState(
          id: 0,
          firebase_id: '',
          userName: '',
        ));

  final Reader _read;
  Future<Dio> Function() _dioProvider;

  Future<void> getUser() async {
    final dio = await _dioProvider();
    final firebaseId = _read(authServiceProvider).getCurrentUser()!.uid;

    Response result = await dio.get('/users', queryParameters: {'firebaseUid': firebaseId});
    Map user = result.data['data'];
    state = state.copyWith(
      id: user['id'],
      firebase_id: user['firebase_id'],
      userName: user['username'],
    );
  }

  Future<void> createUser(String userName) async {
    final dio = await _dioProvider();
    final firebaseId = _read(authServiceProvider).getCurrentUser()!.uid;

    state = state.copyWith(userName: userName);
    await dio.post('/users/createUser',
        queryParameters: {'firebaseUid': firebaseId, 'userName': state.userName});
    await getUser();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

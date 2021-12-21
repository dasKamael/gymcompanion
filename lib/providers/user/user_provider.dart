import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/providers/user/user_state.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

final userProvider = StateNotifierProvider<UserStateProvider, UserState>(
  (ref) => UserStateProvider(ref.read),
);

class UserStateProvider extends StateNotifier<UserState> {
  UserStateProvider(this._read)
      : super(UserState(
          id: 0,
          firebase_id: '',
          userName: '',
        ));

  final Reader _read;

  Future<void> getUser() async {
    final dio = Dio();
    final url = '${ConstValues.url}/users';
    final firebaseId = _read(authServiceProvider).getCurrentUser()!.uid;
    Response result = await dio.get(url, queryParameters: {'firebaseUid': firebaseId});
    Map user = result.data['data'];
    state = state.copyWith(
      id: user['id'],
      firebase_id: user['firebase_id'],
      userName: user['username'],
    );
  }

  Future<void> createUser(String userName) async {
    final dio = Dio();
    final url = '${ConstValues.url}/users/createUser';
    final firebaseId = _read(authServiceProvider).getCurrentUser()!.uid;
    state = state.copyWith(userName: userName);
    await dio.post(url, queryParameters: {'firebaseUid': firebaseId, 'userName': state.userName});
    await getUser();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

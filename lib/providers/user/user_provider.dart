import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/user/user_state.dart';

final userStateProvider = StateProvider<UserStateProvider>(
  (ref) => UserStateProvider(ref.read),
);

class UserStateProvider extends StateNotifier<UserState> {
  UserStateProvider(this._read)
      : super(UserState(
          id: 0,
          firebase_id: '',
          userName: '',
          created_at: 0,
          last_login: 0,
        ));

  final Reader _read;

  Future<void> getUser() async {
    final Dio dio = Dio();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

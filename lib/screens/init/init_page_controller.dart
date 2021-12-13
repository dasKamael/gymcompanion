import 'dart:developer';

import 'package:gymcompanion/providers/auth_provider.dart';
import 'package:gymcompanion/providers/init_provider.dart';
import 'package:gymcompanion/routes.gr.dart';
import 'package:gymcompanion/screens/init/init_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initPageProvider = StateNotifierProvider((ref) => InitPageController(ref.read));

class InitPageController extends StateNotifier<InitPageState> {
  InitPageController(this._read) : super(InitPageState()) {
    initializeApp();
  }

  Reader _read;

  Future<void> initializeApp() async {
    // Check if user is already Logged in on device
    if (_read(authRepositoryProvider).getCurrentUser() != null) {
      await _read(routeProvider).push(MainNavigationRoute());
    } else {
      await _read(routeProvider).push(AuthRoute());
    }
  }
}

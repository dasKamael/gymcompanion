import 'dart:developer';

import 'package:gymcompanion/providers/auth_provider.dart';
import 'package:gymcompanion/providers/init_provider.dart';
import 'package:gymcompanion/routes.gr.dart';
import 'package:gymcompanion/screens/init/init_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initPageProvider =
    StateNotifierProvider<InitPageController, InitPageState>((ref) => InitPageController(ref.read));

class InitPageController extends StateNotifier<InitPageState> {
  InitPageController(this._read) : super(InitPageState(isLoading: false)) {
    initializeApp();
  }

  Reader _read;

  Future<void> initializeApp() async {
    state = state.copyWith(isLoading: true);
    // Check if user is already Logged in on device
    if (_read(authRepositoryProvider).getCurrentUser() != null) {
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).pop();
      await _read(routeProvider).push(MainNavigationRoute());
    } else {
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).pop();
      await _read(routeProvider).push(AuthRoute());
    }
  }
}

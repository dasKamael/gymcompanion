import 'dart:developer';

import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';
import 'package:gymcompanion/routes.gr.dart';
import 'package:gymcompanion/screens/init/init_page_state.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';
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
    if (await _read(authServiceProvider).isAuthenticated()) {
      log('USER IS AUTHENTICATED');
      await _read(userProvider.notifier).getUser();
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).popAndPush(MainNavigationRoute());
    } else {
      log('USER IS NOT AUTHENTICATED');
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).popAndPush(AuthRoute());
    }
  }
}

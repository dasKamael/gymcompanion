import 'package:gymcompanion/providers/auth/auth_provider.dart';
import 'package:gymcompanion/providers/exercise/exercise_provider.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';
import 'package:gymcompanion/routes.gr.dart';
import 'package:gymcompanion/screens/init/init_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initPageProvider = StateNotifierProvider.autoDispose<InitPageController, InitPageState>(
  (ref) => InitPageController(ref.read),
);

class InitPageController extends StateNotifier<InitPageState> {
  InitPageController(
    this._read,
  ) : super(
          InitPageState(isLoading: false),
        ) {
    initializeApp();
  }

  Reader _read;

  Future<void> initializeApp() async {
    state = state.copyWith(isLoading: true);

    // Check if user is already Logged in on device
    if (await _read(authServiceProvider).isAuthenticated()) {
      await _read(userProvider.notifier).getUser();
      await _read(exerciseProvider.notifier).getExercises();
      await _read(planProvider.notifier).getUserPlans();
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).popAndPush(MainNavigationRoute());
    } else {
      state = state.copyWith(isLoading: false);
      await _read(routeProvider).popAndPush(AuthRoute());
    }
  }
}

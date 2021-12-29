import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/exercise/exercise_provider.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';
import 'package:gymcompanion/screens/exercises/exercises_state.dart';

final exercisePageProvider =
    StateNotifierProvider.autoDispose<ExercisePageController, ExercisesState>((ref) {
  return ExercisePageController(ref.read);
});

class ExercisePageController extends StateNotifier<ExercisesState> {
  ExercisePageController(this._read) : super(ExercisesState()) {
    initExercisesPage();
  }

  Reader _read;

  Future<void> initExercisesPage() async {
    await _read(planProvider.notifier).getUserPlans();
  }

  Future<void> getPlans() async {
    await _read(planProvider.notifier).getUserPlans();
  }
}

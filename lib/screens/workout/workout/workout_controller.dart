import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';
import 'package:gymcompanion/screens/workout/workout/workout_state.dart';

final workoutPageProvider = StateNotifierProvider.autoDispose<WorkoutPage, WorkoutState>((ref) {
  return WorkoutPage(ref.read);
});

class WorkoutPage extends StateNotifier<WorkoutState> {
  WorkoutPage(this._read)
      : super(WorkoutState(
          exercises: [],
        ));

  Reader _read;

  // TODO fill state with exercises and update them after workout

  Future<void> getExercises(Plan plan) async {
    state = state.copyWith(exercises: plan.exercises);
  }
}

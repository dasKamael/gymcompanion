import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/screens/plan/create_plan/create_plan_state.dart';

final createPlanProvider =
    StateNotifierProvider.autoDispose<CreatePlanController, CreatePlanState>((ref) {
  return CreatePlanController();
});

class CreatePlanController extends StateNotifier<CreatePlanState> {
  CreatePlanController()
      : super(CreatePlanState(
          exercises: [
            Exercise(id: 1, name: 'Curl'),
            Exercise(id: 2, name: 'Lats'),
            Exercise(id: 3, name: 'Trizeps'),
            Exercise(id: 4, name: 'Bench press'),
          ],
          selectedExercises: [],
        )) {
    initCreatePlanPage();
  }

  void initCreatePlanPage() {}

  void reorderExerciseList(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final Exercise exercise = state.selectedExercises.removeAt(oldIndex);
    state.selectedExercises.insert(newIndex, exercise);

    state = state.copyWith();
  }

  void addExerciseToList(Map<String, dynamic> value) {
    //state.selectedExercises.add(Exercise(id: value['id'], name: value['name']));
    state = state.copyWith();
  }

  void removeExerciseFromList(int index) {
    state.selectedExercises.removeAt(index);
    state = state.copyWith();
  }
}

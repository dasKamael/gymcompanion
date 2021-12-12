import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gymcompanion/constants/consts.dart';
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

  void initCreatePlanPage() {
    // Get available Exercises
    state = state.copyWith(exercises: []);
    getExercises();
  }

  Future<void> getExercises() async {
    final dio = Dio();
    final url = '${ConstValues.url}/exercise';

    Response response = await dio.get(url);
    for (final data in response.data['result']) {
      log(data.toString());
      state.exercises.add(Exercise.fromJson(data));
    }
    state = state.copyWith();
  }

  void reorderExerciseList(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final Exercise exercise = state.selectedExercises.removeAt(oldIndex);
    state.selectedExercises.insert(newIndex, exercise);

    state = state.copyWith();
  }

  void addExerciseToList(Exercise exercise) {
    state.selectedExercises.add(exercise);
    state = state.copyWith();
  }

  void removeExerciseFromList(Exercise exercise) {
    state.selectedExercises.remove(exercise);
    state = state.copyWith();
  }

  // TODO - CREATE PLAN
  void createPlan() {}
}

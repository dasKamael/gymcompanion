import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/constants.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/exercise/exercise_provider.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';
import 'package:gymcompanion/screens/exercises/create_plan/create_plan_state.dart';

final createPlanProvider =
    StateNotifierProvider.autoDispose<CreatePlanController, CreatePlanState>((ref) {
  return CreatePlanController(ref.read);
});

class CreatePlanController extends StateNotifier<CreatePlanState> {
  CreatePlanController(this._read)
      : super(CreatePlanState(
          name: '',
          exercises: [],
          selectedExercises: [],
        )) {
    initCreatePlanPage();
  }

  Reader _read;

  Future<void> initCreatePlanPage() async {
    await getExercises();
  }

  Future<void> getExercises() async {
    List<Exercise> exerciseData = await _read(exerciseProvider.notifier).getExercises();
    state = state.copyWith(exercises: exerciseData);
  }

  Future<void> createAndAddNewExercise({required String name}) async {
    final Exercise newExercise = await _read(exerciseProvider.notifier).createExercise(
      name: name,
      type: state.newExerciseBodyType,
    );

    state.exercises.add(newExercise);
    state.selectedExercises.add(newExercise);
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

  void setPlanName(String name) => state = state.copyWith(name: name);

  void setNewExerciseBodyType(BodyType type) => state = state.copyWith(newExerciseBodyType: type);

  Future<void> createPlan(BuildContext context) async {
    log(state.exercises.toString());
    await _read(planProvider.notifier).createAndAddPlan(
      name: state.name,
      exercises: state.selectedExercises,
    );
    Navigator.pop(context);
    state = state.copyWith();
  }
}

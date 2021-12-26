import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/constants.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/screens/exercises/create_plan/create_plan_state.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

final createPlanProvider =
    StateNotifierProvider.autoDispose<CreatePlanController, CreatePlanState>((ref) {
  return CreatePlanController(ref.read);
});

class CreatePlanController extends StateNotifier<CreatePlanState> {
  CreatePlanController(this._read)
      : super(CreatePlanState(
          exercises: [],
          selectedExercises: [],
        )) {
    initCreatePlanPage();
  }

  Reader _read;

  void initCreatePlanPage() {
    // Get available Exercises
    getExercises();
  }

  Future<void> getExercises() async {
    final firebaseId = _read(authServiceProvider).getCurrentUser()!.uid;

    CollectionReference exercisesReference =
        _read(firestoreProvider).collection('/Users/${firebaseId}/Exercises');
    await exercisesReference.get().then((QuerySnapshot exercises) {
      for (final exercise in exercises.docs) {
        Map<String, dynamic> exerciseData = exercise.data() as Map<String, dynamic>;
        log(exerciseData.toString());
        state.exercises.add(Exercise(id: exercise.id, name: exerciseData['name']));
      }
    });
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
    state = state.copyWith();
  }

  Future<void> addNewExercise({required String name}) async {
    final firebaseId = _read(authServiceProvider).getCurrentUser()!.uid;

    CollectionReference exercisesReference =
        _read(firestoreProvider).collection('/Users/${firebaseId}/Exercises');

    DocumentReference addedExercise =
        await exercisesReference.add({'name': name, 'type': state.newExerciseBodyType.name});
    log(addedExercise.id);
    state.exercises.add(Exercise(id: addedExercise.id, name: name));
    state = state;
  }
}

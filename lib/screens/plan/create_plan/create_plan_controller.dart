import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';
import 'package:gymcompanion/screens/plan/create_plan/create_plan_state.dart';

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

  void setPlanName(String value) {
    state = state.copyWith(name: value);
  }

  Future<void> createPlan(BuildContext context) async {
    if (state.selectedExercises.isNotEmpty) {
      final dio = Dio();
      final url = '${ConstValues.url}/plans/createPlan';

      Map<String, dynamic> body = {'name': state.name, 'userId': _read(userProvider).id};

      List<int> exercises = [];
      for (final exercise in state.selectedExercises) {
        exercises.add(exercise.id);
      }
      body.addAll({'exercises': exercises});

      Response response = await dio.post(url, queryParameters: body);

      if (response.data['message'] == 'PLAN_ALREADY_EXISTS') {
        await Flushbar(
          icon: Icon(Icons.error_outline, color: ConstColors.error),
          message: 'Plan name bereits vorhanden',
          backgroundColor: ConstColors.buttonColor,
          messageColor: ConstColors.error,
          duration: Duration(seconds: 3),
        ).show(context);
      } else {
        _read(planProvider.notifier).addPlan(Plan(
          id: 4,
          name: state.name,
          exercises: state.selectedExercises,
          lastTrained: [],
        ));
        Navigator.pop(context);
        await Flushbar(
          icon: Icon(Icons.check_circle_outline, color: ConstColors.secondaryColor),
          message: 'Plan erfolgreich erstellt',
          backgroundColor: ConstColors.buttonColor,
          messageColor: ConstColors.secondaryColor,
          duration: Duration(seconds: 3),
        ).show(context);
      }
    } else {
      await Flushbar(
        icon: Icon(Icons.error_outline, color: ConstColors.warn),
        message: 'Mindestens eine Übung hinzufügen',
        backgroundColor: ConstColors.buttonColor,
        messageColor: ConstColors.warn,
        duration: Duration(seconds: 3),
      ).show(context);
    }
    state = state.copyWith();
  }
}

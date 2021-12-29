import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/auth/auth_provider.dart';
import 'package:gymcompanion/providers/exercise/exercise_provider.dart';
import 'package:gymcompanion/providers/plan/plan_state.dart';
import 'package:gymcompanion/providers/providers.dart';

final planProvider = StateNotifierProvider<PlanStateProvider, PlanState>(
  (ref) => PlanStateProvider(ref.read),
);

class PlanStateProvider extends StateNotifier<PlanState> {
  PlanStateProvider(
    this._read,
  ) : super(
          PlanState(
            plans: [],
          ),
        );

  final Reader _read;

  Future<List<Plan>> getUserPlans() async {
    await _read(exerciseProvider.notifier).getExercises();

    if (state.plans.isEmpty) {
      final userId = _read(authServiceProvider).getCurrentUser()!.uid;

      CollectionReference plansReference = _read(firestoreProvider).collection(
        '/Users/${userId}/Plans',
      );
      await plansReference.get().then((QuerySnapshot plans) {
        for (final plan in plans.docs) {
          Map<String, dynamic> plansData = plan.data() as Map<String, dynamic>;
          List<Exercise> exercises = [];
          for (final exerciseId in List<String>.from(plansData['exercises'])) {
            exercises.add(_read(exerciseProvider)
                .exercises
                .firstWhere((exercise) => exercise.id == exerciseId));
          }

          state.plans.add(Plan(
            id: plan.id,
            name: plansData['name'],
            lastTrained: plansData['last_trained'].toDate(),
            exercises: exercises,
          ));
        }
      });
    }
    state = state.copyWith();
    return state.plans;
  }

  Future<void> createAndAddPlan({required String name, required List<Exercise> exercises}) async {
    final userId = _read(authServiceProvider).getCurrentUser()!.uid;

    CollectionReference planReference = _read(firestoreProvider).collection(
      '/Users/${userId}/Plans',
    );

    List<String> exercisesId = [];

    for (final exercise in exercises) {
      DocumentReference exerciseReference =
          _read(firestoreProvider).doc('Users/${userId}/Exercises/${exercise.id}');
      exercisesId.add(exerciseReference.id);
    }

    DocumentReference addedPlan = await planReference.add({
      'name': name,
      'exercises': exercisesId,
      'last_trained': DateTime.now(),
    });
    final newPlan = Plan(
      id: addedPlan.id,
      name: name,
      exercises: exercises,
      lastTrained: DateTime.fromMillisecondsSinceEpoch(0),
    );
    state.plans.add(newPlan);
    state = state;
  }
}

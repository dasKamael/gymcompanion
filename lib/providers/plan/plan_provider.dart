import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/auth/auth_provider.dart';
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

  Future<void> getUserPlans() async {}

  Future<void> createAndAddPlan({required String name, required List<Exercise> exercises}) async {
    final userId = _read(authServiceProvider).getCurrentUser()!.uid;

    CollectionReference planReference = _read(firestoreProvider).collection(
      '/Users/${userId}/Plans',
    );

    List<DocumentReference> exercisesReferences = [];

    for (final exercise in exercises) {
      DocumentReference exerciseReference =
          _read(firestoreProvider).doc('Users/${userId}/Exercises/${exercise.id}');
      exercisesReferences.add(exerciseReference);
    }

    DocumentReference addedPlan = await planReference.add({
      'name': name,
      'exercises': exercisesReferences,
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

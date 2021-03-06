import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/body_types.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/providers/auth/auth_provider.dart';
import 'package:gymcompanion/providers/exercise/exercise_state.dart';
import 'package:gymcompanion/providers/providers.dart';

final exerciseProvider = StateNotifierProvider<ExerciseController, ExerciseState>((ref) {
  return ExerciseController(ref.read);
});

class ExerciseController extends StateNotifier<ExerciseState> {
  ExerciseController(this._read)
      : super(ExerciseState(
          exercises: [],
        ));

  Reader _read;

  /// Return the List of all Exericses in the Database
  Future<List<Exercise>> getExercises() async {
    if (state.exercises.isEmpty) {
      final userId = _read(authServiceProvider).getCurrentUser()!.uid;

      CollectionReference exercisesReference = _read(firestoreProvider).collection(
        '/Users/${userId}/Exercises',
      );

      await exercisesReference.get().then((QuerySnapshot exercises) {
        for (final exercise in exercises.docs) {
          Map<String, dynamic> exerciseData = exercise.data() as Map<String, dynamic>;
          state.exercises.add(Exercise(
            id: exercise.id,
            name: exerciseData['name'],
            lastTrained: exerciseData['last_traied'] == null
                ? DateTime.fromMillisecondsSinceEpoch(0)
                : exerciseData['last_traied'].toDate(),
          ));
        }
      });
    }

    return state.exercises;
  }

  /// Add a new Exercise to Database and save in state
  Future<Exercise> createExercise({required String name, required BodyType type}) async {
    final userId = _read(authServiceProvider).getCurrentUser()!.uid;

    CollectionReference exercisesReference = _read(firestoreProvider).collection(
      '/Users/${userId}/Exercises',
    );

    DocumentReference addedExercise = await exercisesReference.add({
      'name': name,
      'type': type.name,
    });

    final newExercise = Exercise(
      id: addedExercise.id,
      name: name,
      lastTrained: DateTime.fromMillisecondsSinceEpoch(0),
    );

    state.exercises.add(newExercise);

    return newExercise;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gymcompanion/constants/constants.dart';
import 'package:gymcompanion/models/exercise.dart';
part 'create_plan_state.freezed.dart';
part 'create_plan_state.g.dart';

@freezed
class CreatePlanState with _$CreatePlanState {
  const factory CreatePlanState({
    @Default('') String name,
    @Default([]) List<Exercise> exercises,
    @Default([]) List<Exercise> selectedExercises,
    @Default(BodyType.abs) BodyType newExerciseBodyType,
  }) = _CreatePlanState;
  factory CreatePlanState.fromJson(Map<String, dynamic> json) => _$CreatePlanStateFromJson(json);
}

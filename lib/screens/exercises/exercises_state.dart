import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercises_state.freezed.dart';
part 'exercises_state.g.dart';

@freezed
class ExercisesState with _$ExercisesState {
  const factory ExercisesState() = _ExercisesState;
  factory ExercisesState.fromJson(Map<String, dynamic> json) => _$ExercisesStateFromJson(json);
}

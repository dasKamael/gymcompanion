import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String id,
    required String name,
  }) = _Exercise;
  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}

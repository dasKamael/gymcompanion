// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseSet _$$_ExerciseSetFromJson(Map<String, dynamic> json) =>
    _$_ExerciseSet(
      set: json['set'] as int,
      reps: json['reps'] as int,
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ExerciseSetToJson(_$_ExerciseSet instance) =>
    <String, dynamic>{
      'set': instance.set,
      'reps': instance.reps,
      'weight': instance.weight,
    };

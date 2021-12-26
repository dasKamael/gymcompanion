// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_plan_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePlanState _$$_CreatePlanStateFromJson(Map<String, dynamic> json) =>
    _$_CreatePlanState(
      name: json['name'] as String? ?? '',
      exercises: (json['exercises'] as List<dynamic>?)
              ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      selectedExercises: (json['selectedExercises'] as List<dynamic>?)
              ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      newExerciseBodyType:
          $enumDecodeNullable(_$BodyTypeEnumMap, json['newExerciseBodyType']) ??
              BodyType.abs,
    );

Map<String, dynamic> _$$_CreatePlanStateToJson(_$_CreatePlanState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'exercises': instance.exercises,
      'selectedExercises': instance.selectedExercises,
      'newExerciseBodyType': _$BodyTypeEnumMap[instance.newExerciseBodyType],
    };

const _$BodyTypeEnumMap = {
  BodyType.chest: 'chest',
  BodyType.arms: 'arms',
  BodyType.back: 'back',
  BodyType.legs: 'legs',
  BodyType.abs: 'abs',
};

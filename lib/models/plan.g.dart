// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Plan _$$_PlanFromJson(Map<String, dynamic> json) => _$_Plan(
      id: json['id'] as int,
      name: json['name'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdTimeStamp: json['createdTimeStamp'] as int,
    );

Map<String, dynamic> _$$_PlanToJson(_$_Plan instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'exercises': instance.exercises,
      'createdTimeStamp': instance.createdTimeStamp,
    };

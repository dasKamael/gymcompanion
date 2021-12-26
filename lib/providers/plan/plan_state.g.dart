// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanState _$$_PlanStateFromJson(Map<String, dynamic> json) => _$_PlanState(
      plans: (json['plans'] as List<dynamic>)
          .map((e) => Plan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlanStateToJson(_$_PlanState instance) =>
    <String, dynamic>{
      'plans': instance.plans,
    };

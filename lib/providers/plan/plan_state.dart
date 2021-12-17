import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gymcompanion/models/plan.dart';
part 'plan_state.freezed.dart';
part 'plan_state.g.dart';

@freezed
class PlanState with _$PlanState {
  const factory PlanState({
    required List<Plan> plans,
  }) = _PlanState;
  factory PlanState.fromJson(Map<String, dynamic> json) => _$PlanStateFromJson(json);
}

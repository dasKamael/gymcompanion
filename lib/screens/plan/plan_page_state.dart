import 'package:freezed_annotation/freezed_annotation.dart';
part 'plan_page_state.freezed.dart';
part 'plan_page_state.g.dart';

@freezed
class PlanPageState with _$PlanPageState {
  const factory PlanPageState() = _PlanPageState;
  factory PlanPageState.fromJson(Map<String, dynamic> json) => _$PlanPageStateFromJson(json);
}

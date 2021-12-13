import 'package:freezed_annotation/freezed_annotation.dart';
part 'init_page_state.freezed.dart';
part 'init_page_state.g.dart';

@freezed
class InitPageState with _$InitPageState {
  const factory InitPageState({required bool isLoading}) = _InitPageState;
  factory InitPageState.fromJson(Map<String, dynamic> json) => _$InitPageStateFromJson(json);
}

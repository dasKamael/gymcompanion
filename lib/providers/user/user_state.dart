import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required String firebase_id,
    required String userName,
  }) = _UserState;
  factory UserState.fromJson(Map<String, dynamic> json) => _$UserStateFromJson(json);
}

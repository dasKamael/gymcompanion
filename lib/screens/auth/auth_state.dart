import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required String email,
    required String password,
    required bool isLoginPage,
    required String userName,
    required int height,
    required int weight,
    required DateTime birthdate,
    String? errorMessage,
  }) = _AuthState;
  //factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}

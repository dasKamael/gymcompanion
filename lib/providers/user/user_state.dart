import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    required String firebase_id,
    required String userName,
    @Default(0) int weight,
    @Default(0) int height,
    required Timestamp birthdate,
  }) = _UserState;
}

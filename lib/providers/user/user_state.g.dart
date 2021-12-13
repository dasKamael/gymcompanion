// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserState _$$_UserStateFromJson(Map<String, dynamic> json) => _$_UserState(
      id: json['id'] as int,
      firebase_id: json['firebase_id'] as String,
      userName: json['userName'] as String,
      created_at: json['created_at'] as int,
      last_login: json['last_login'] as int,
    );

Map<String, dynamic> _$$_UserStateToJson(_$_UserState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firebase_id': instance.firebase_id,
      'userName': instance.userName,
      'created_at': instance.created_at,
      'last_login': instance.last_login,
    };

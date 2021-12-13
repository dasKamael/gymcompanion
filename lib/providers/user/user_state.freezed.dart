// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  return _UserState.fromJson(json);
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {required int id,
      required String firebase_id,
      required String userName,
      required int created_at,
      required int last_login}) {
    return _UserState(
      id: id,
      firebase_id: firebase_id,
      userName: userName,
      created_at: created_at,
      last_login: last_login,
    );
  }

  UserState fromJson(Map<String, Object?> json) {
    return UserState.fromJson(json);
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  int get id => throw _privateConstructorUsedError;
  String get firebase_id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get created_at => throw _privateConstructorUsedError;
  int get last_login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String firebase_id,
      String userName,
      int created_at,
      int last_login});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firebase_id = freezed,
    Object? userName = freezed,
    Object? created_at = freezed,
    Object? last_login = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firebase_id: firebase_id == freezed
          ? _value.firebase_id
          : firebase_id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int,
      last_login: last_login == freezed
          ? _value.last_login
          : last_login // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String firebase_id,
      String userName,
      int created_at,
      int last_login});
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object? id = freezed,
    Object? firebase_id = freezed,
    Object? userName = freezed,
    Object? created_at = freezed,
    Object? last_login = freezed,
  }) {
    return _then(_UserState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firebase_id: firebase_id == freezed
          ? _value.firebase_id
          : firebase_id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int,
      last_login: last_login == freezed
          ? _value.last_login
          : last_login // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserState implements _UserState {
  const _$_UserState(
      {required this.id,
      required this.firebase_id,
      required this.userName,
      required this.created_at,
      required this.last_login});

  factory _$_UserState.fromJson(Map<String, dynamic> json) =>
      _$$_UserStateFromJson(json);

  @override
  final int id;
  @override
  final String firebase_id;
  @override
  final String userName;
  @override
  final int created_at;
  @override
  final int last_login;

  @override
  String toString() {
    return 'UserState(id: $id, firebase_id: $firebase_id, userName: $userName, created_at: $created_at, last_login: $last_login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.firebase_id, firebase_id) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.last_login, last_login));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firebase_id),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(last_login));

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStateToJson(this);
  }
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required int id,
      required String firebase_id,
      required String userName,
      required int created_at,
      required int last_login}) = _$_UserState;

  factory _UserState.fromJson(Map<String, dynamic> json) =
      _$_UserState.fromJson;

  @override
  int get id;
  @override
  String get firebase_id;
  @override
  String get userName;
  @override
  int get created_at;
  @override
  int get last_login;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

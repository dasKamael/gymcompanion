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

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {required String firebase_id,
      required String userName,
      int weight = 0,
      int height = 0,
      required Timestamp birthdate}) {
    return _UserState(
      firebase_id: firebase_id,
      userName: userName,
      weight: weight,
      height: height,
      birthdate: birthdate,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  String get firebase_id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  Timestamp get birthdate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {String firebase_id,
      String userName,
      int weight,
      int height,
      Timestamp birthdate});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? firebase_id = freezed,
    Object? userName = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_value.copyWith(
      firebase_id: firebase_id == freezed
          ? _value.firebase_id
          : firebase_id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
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
      {String firebase_id,
      String userName,
      int weight,
      int height,
      Timestamp birthdate});
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
    Object? firebase_id = freezed,
    Object? userName = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_UserState(
      firebase_id: firebase_id == freezed
          ? _value.firebase_id
          : firebase_id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  _$_UserState(
      {required this.firebase_id,
      required this.userName,
      this.weight = 0,
      this.height = 0,
      required this.birthdate});

  @override
  final String firebase_id;
  @override
  final String userName;
  @JsonKey(defaultValue: 0)
  @override
  final int weight;
  @JsonKey(defaultValue: 0)
  @override
  final int height;
  @override
  final Timestamp birthdate;

  @override
  String toString() {
    return 'UserState(firebase_id: $firebase_id, userName: $userName, weight: $weight, height: $height, birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserState &&
            const DeepCollectionEquality()
                .equals(other.firebase_id, firebase_id) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firebase_id),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(birthdate));

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  factory _UserState(
      {required String firebase_id,
      required String userName,
      int weight,
      int height,
      required Timestamp birthdate}) = _$_UserState;

  @override
  String get firebase_id;
  @override
  String get userName;
  @override
  int get weight;
  @override
  int get height;
  @override
  Timestamp get birthdate;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

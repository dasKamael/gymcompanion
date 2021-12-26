// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercises_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExercisesState _$ExercisesStateFromJson(Map<String, dynamic> json) {
  return _ExercisesState.fromJson(json);
}

/// @nodoc
class _$ExercisesStateTearOff {
  const _$ExercisesStateTearOff();

  _ExercisesState call() {
    return const _ExercisesState();
  }

  ExercisesState fromJson(Map<String, Object?> json) {
    return ExercisesState.fromJson(json);
  }
}

/// @nodoc
const $ExercisesState = _$ExercisesStateTearOff();

/// @nodoc
mixin _$ExercisesState {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExercisesStateCopyWith<$Res> {
  factory $ExercisesStateCopyWith(
          ExercisesState value, $Res Function(ExercisesState) then) =
      _$ExercisesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExercisesStateCopyWithImpl<$Res>
    implements $ExercisesStateCopyWith<$Res> {
  _$ExercisesStateCopyWithImpl(this._value, this._then);

  final ExercisesState _value;
  // ignore: unused_field
  final $Res Function(ExercisesState) _then;
}

/// @nodoc
abstract class _$ExercisesStateCopyWith<$Res> {
  factory _$ExercisesStateCopyWith(
          _ExercisesState value, $Res Function(_ExercisesState) then) =
      __$ExercisesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExercisesStateCopyWithImpl<$Res>
    extends _$ExercisesStateCopyWithImpl<$Res>
    implements _$ExercisesStateCopyWith<$Res> {
  __$ExercisesStateCopyWithImpl(
      _ExercisesState _value, $Res Function(_ExercisesState) _then)
      : super(_value, (v) => _then(v as _ExercisesState));

  @override
  _ExercisesState get _value => super._value as _ExercisesState;
}

/// @nodoc
@JsonSerializable()
class _$_ExercisesState implements _ExercisesState {
  const _$_ExercisesState();

  factory _$_ExercisesState.fromJson(Map<String, dynamic> json) =>
      _$$_ExercisesStateFromJson(json);

  @override
  String toString() {
    return 'ExercisesState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ExercisesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExercisesStateToJson(this);
  }
}

abstract class _ExercisesState implements ExercisesState {
  const factory _ExercisesState() = _$_ExercisesState;

  factory _ExercisesState.fromJson(Map<String, dynamic> json) =
      _$_ExercisesState.fromJson;
}

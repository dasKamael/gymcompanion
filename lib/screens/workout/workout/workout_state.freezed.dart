// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkoutStateTearOff {
  const _$WorkoutStateTearOff();

  _WorkoutState call({required List<Exercise> exercises}) {
    return _WorkoutState(
      exercises: exercises,
    );
  }
}

/// @nodoc
const $WorkoutState = _$WorkoutStateTearOff();

/// @nodoc
mixin _$WorkoutState {
  List<Exercise> get exercises => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutStateCopyWith<WorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) then) =
      _$WorkoutStateCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res> implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  final WorkoutState _value;
  // ignore: unused_field
  final $Res Function(WorkoutState) _then;

  @override
  $Res call({
    Object? exercises = freezed,
  }) {
    return _then(_value.copyWith(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutStateCopyWith<$Res>
    implements $WorkoutStateCopyWith<$Res> {
  factory _$WorkoutStateCopyWith(
          _WorkoutState value, $Res Function(_WorkoutState) then) =
      __$WorkoutStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Exercise> exercises});
}

/// @nodoc
class __$WorkoutStateCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements _$WorkoutStateCopyWith<$Res> {
  __$WorkoutStateCopyWithImpl(
      _WorkoutState _value, $Res Function(_WorkoutState) _then)
      : super(_value, (v) => _then(v as _WorkoutState));

  @override
  _WorkoutState get _value => super._value as _WorkoutState;

  @override
  $Res call({
    Object? exercises = freezed,
  }) {
    return _then(_WorkoutState(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc

class _$_WorkoutState implements _WorkoutState {
  const _$_WorkoutState({required this.exercises});

  @override
  final List<Exercise> exercises;

  @override
  String toString() {
    return 'WorkoutState(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutState &&
            const DeepCollectionEquality().equals(other.exercises, exercises));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exercises));

  @JsonKey(ignore: true)
  @override
  _$WorkoutStateCopyWith<_WorkoutState> get copyWith =>
      __$WorkoutStateCopyWithImpl<_WorkoutState>(this, _$identity);
}

abstract class _WorkoutState implements WorkoutState {
  const factory _WorkoutState({required List<Exercise> exercises}) =
      _$_WorkoutState;

  @override
  List<Exercise> get exercises;
  @override
  @JsonKey(ignore: true)
  _$WorkoutStateCopyWith<_WorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

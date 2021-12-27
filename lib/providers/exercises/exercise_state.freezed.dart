// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExerciseStateTearOff {
  const _$ExerciseStateTearOff();

  _ExerciseState call({required List<Exercise> exercises}) {
    return _ExerciseState(
      exercises: exercises,
    );
  }
}

/// @nodoc
const $ExerciseState = _$ExerciseStateTearOff();

/// @nodoc
mixin _$ExerciseState {
  List<Exercise> get exercises => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseStateCopyWith<ExerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseStateCopyWith<$Res> {
  factory $ExerciseStateCopyWith(
          ExerciseState value, $Res Function(ExerciseState) then) =
      _$ExerciseStateCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

/// @nodoc
class _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseStateCopyWith<$Res> {
  _$ExerciseStateCopyWithImpl(this._value, this._then);

  final ExerciseState _value;
  // ignore: unused_field
  final $Res Function(ExerciseState) _then;

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
abstract class _$ExerciseStateCopyWith<$Res>
    implements $ExerciseStateCopyWith<$Res> {
  factory _$ExerciseStateCopyWith(
          _ExerciseState value, $Res Function(_ExerciseState) then) =
      __$ExerciseStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Exercise> exercises});
}

/// @nodoc
class __$ExerciseStateCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res>
    implements _$ExerciseStateCopyWith<$Res> {
  __$ExerciseStateCopyWithImpl(
      _ExerciseState _value, $Res Function(_ExerciseState) _then)
      : super(_value, (v) => _then(v as _ExerciseState));

  @override
  _ExerciseState get _value => super._value as _ExerciseState;

  @override
  $Res call({
    Object? exercises = freezed,
  }) {
    return _then(_ExerciseState(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc

class _$_ExerciseState implements _ExerciseState {
  const _$_ExerciseState({required this.exercises});

  @override
  final List<Exercise> exercises;

  @override
  String toString() {
    return 'ExerciseState(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExerciseState &&
            const DeepCollectionEquality().equals(other.exercises, exercises));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exercises));

  @JsonKey(ignore: true)
  @override
  _$ExerciseStateCopyWith<_ExerciseState> get copyWith =>
      __$ExerciseStateCopyWithImpl<_ExerciseState>(this, _$identity);
}

abstract class _ExerciseState implements ExerciseState {
  const factory _ExerciseState({required List<Exercise> exercises}) =
      _$_ExerciseState;

  @override
  List<Exercise> get exercises;
  @override
  @JsonKey(ignore: true)
  _$ExerciseStateCopyWith<_ExerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

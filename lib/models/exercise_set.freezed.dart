// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseSet _$ExerciseSetFromJson(Map<String, dynamic> json) {
  return _ExerciseSet.fromJson(json);
}

/// @nodoc
class _$ExerciseSetTearOff {
  const _$ExerciseSetTearOff();

  _ExerciseSet call(
      {required int set, required int reps, required double weight}) {
    return _ExerciseSet(
      set: set,
      reps: reps,
      weight: weight,
    );
  }

  ExerciseSet fromJson(Map<String, Object?> json) {
    return ExerciseSet.fromJson(json);
  }
}

/// @nodoc
const $ExerciseSet = _$ExerciseSetTearOff();

/// @nodoc
mixin _$ExerciseSet {
  int get set => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseSetCopyWith<ExerciseSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetCopyWith<$Res> {
  factory $ExerciseSetCopyWith(
          ExerciseSet value, $Res Function(ExerciseSet) then) =
      _$ExerciseSetCopyWithImpl<$Res>;
  $Res call({int set, int reps, double weight});
}

/// @nodoc
class _$ExerciseSetCopyWithImpl<$Res> implements $ExerciseSetCopyWith<$Res> {
  _$ExerciseSetCopyWithImpl(this._value, this._then);

  final ExerciseSet _value;
  // ignore: unused_field
  final $Res Function(ExerciseSet) _then;

  @override
  $Res call({
    Object? set = freezed,
    Object? reps = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      set: set == freezed
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as int,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseSetCopyWith<$Res>
    implements $ExerciseSetCopyWith<$Res> {
  factory _$ExerciseSetCopyWith(
          _ExerciseSet value, $Res Function(_ExerciseSet) then) =
      __$ExerciseSetCopyWithImpl<$Res>;
  @override
  $Res call({int set, int reps, double weight});
}

/// @nodoc
class __$ExerciseSetCopyWithImpl<$Res> extends _$ExerciseSetCopyWithImpl<$Res>
    implements _$ExerciseSetCopyWith<$Res> {
  __$ExerciseSetCopyWithImpl(
      _ExerciseSet _value, $Res Function(_ExerciseSet) _then)
      : super(_value, (v) => _then(v as _ExerciseSet));

  @override
  _ExerciseSet get _value => super._value as _ExerciseSet;

  @override
  $Res call({
    Object? set = freezed,
    Object? reps = freezed,
    Object? weight = freezed,
  }) {
    return _then(_ExerciseSet(
      set: set == freezed
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as int,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseSet implements _ExerciseSet {
  const _$_ExerciseSet(
      {required this.set, required this.reps, required this.weight});

  factory _$_ExerciseSet.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseSetFromJson(json);

  @override
  final int set;
  @override
  final int reps;
  @override
  final double weight;

  @override
  String toString() {
    return 'ExerciseSet(set: $set, reps: $reps, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExerciseSet &&
            const DeepCollectionEquality().equals(other.set, set) &&
            const DeepCollectionEquality().equals(other.reps, reps) &&
            const DeepCollectionEquality().equals(other.weight, weight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(set),
      const DeepCollectionEquality().hash(reps),
      const DeepCollectionEquality().hash(weight));

  @JsonKey(ignore: true)
  @override
  _$ExerciseSetCopyWith<_ExerciseSet> get copyWith =>
      __$ExerciseSetCopyWithImpl<_ExerciseSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseSetToJson(this);
  }
}

abstract class _ExerciseSet implements ExerciseSet {
  const factory _ExerciseSet(
      {required int set,
      required int reps,
      required double weight}) = _$_ExerciseSet;

  factory _ExerciseSet.fromJson(Map<String, dynamic> json) =
      _$_ExerciseSet.fromJson;

  @override
  int get set;
  @override
  int get reps;
  @override
  double get weight;
  @override
  @JsonKey(ignore: true)
  _$ExerciseSetCopyWith<_ExerciseSet> get copyWith =>
      throw _privateConstructorUsedError;
}

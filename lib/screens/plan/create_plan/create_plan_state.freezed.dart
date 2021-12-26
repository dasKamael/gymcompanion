// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_plan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePlanState _$CreatePlanStateFromJson(Map<String, dynamic> json) {
  return _CreatePlanState.fromJson(json);
}

/// @nodoc
class _$CreatePlanStateTearOff {
  const _$CreatePlanStateTearOff();

  _CreatePlanState call(
      {String name = '',
      List<Exercise> exercises = const [],
      List<Exercise> selectedExercises = const []}) {
    return _CreatePlanState(
      name: name,
      exercises: exercises,
      selectedExercises: selectedExercises,
    );
  }

  CreatePlanState fromJson(Map<String, Object?> json) {
    return CreatePlanState.fromJson(json);
  }
}

/// @nodoc
const $CreatePlanState = _$CreatePlanStateTearOff();

/// @nodoc
mixin _$CreatePlanState {
  String get name => throw _privateConstructorUsedError;
  List<Exercise> get exercises => throw _privateConstructorUsedError;
  List<Exercise> get selectedExercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePlanStateCopyWith<CreatePlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlanStateCopyWith<$Res> {
  factory $CreatePlanStateCopyWith(
          CreatePlanState value, $Res Function(CreatePlanState) then) =
      _$CreatePlanStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<Exercise> exercises,
      List<Exercise> selectedExercises});
}

/// @nodoc
class _$CreatePlanStateCopyWithImpl<$Res>
    implements $CreatePlanStateCopyWith<$Res> {
  _$CreatePlanStateCopyWithImpl(this._value, this._then);

  final CreatePlanState _value;
  // ignore: unused_field
  final $Res Function(CreatePlanState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? exercises = freezed,
    Object? selectedExercises = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      selectedExercises: selectedExercises == freezed
          ? _value.selectedExercises
          : selectedExercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc
abstract class _$CreatePlanStateCopyWith<$Res>
    implements $CreatePlanStateCopyWith<$Res> {
  factory _$CreatePlanStateCopyWith(
          _CreatePlanState value, $Res Function(_CreatePlanState) then) =
      __$CreatePlanStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<Exercise> exercises,
      List<Exercise> selectedExercises});
}

/// @nodoc
class __$CreatePlanStateCopyWithImpl<$Res>
    extends _$CreatePlanStateCopyWithImpl<$Res>
    implements _$CreatePlanStateCopyWith<$Res> {
  __$CreatePlanStateCopyWithImpl(
      _CreatePlanState _value, $Res Function(_CreatePlanState) _then)
      : super(_value, (v) => _then(v as _CreatePlanState));

  @override
  _CreatePlanState get _value => super._value as _CreatePlanState;

  @override
  $Res call({
    Object? name = freezed,
    Object? exercises = freezed,
    Object? selectedExercises = freezed,
  }) {
    return _then(_CreatePlanState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      selectedExercises: selectedExercises == freezed
          ? _value.selectedExercises
          : selectedExercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePlanState implements _CreatePlanState {
  const _$_CreatePlanState(
      {this.name = '',
      this.exercises = const [],
      this.selectedExercises = const []});

  factory _$_CreatePlanState.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePlanStateFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<Exercise> exercises;
  @JsonKey(defaultValue: const [])
  @override
  final List<Exercise> selectedExercises;

  @override
  String toString() {
    return 'CreatePlanState(name: $name, exercises: $exercises, selectedExercises: $selectedExercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePlanState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.exercises, exercises) &&
            const DeepCollectionEquality()
                .equals(other.selectedExercises, selectedExercises));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(exercises),
      const DeepCollectionEquality().hash(selectedExercises));

  @JsonKey(ignore: true)
  @override
  _$CreatePlanStateCopyWith<_CreatePlanState> get copyWith =>
      __$CreatePlanStateCopyWithImpl<_CreatePlanState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePlanStateToJson(this);
  }
}

abstract class _CreatePlanState implements CreatePlanState {
  const factory _CreatePlanState(
      {String name,
      List<Exercise> exercises,
      List<Exercise> selectedExercises}) = _$_CreatePlanState;

  factory _CreatePlanState.fromJson(Map<String, dynamic> json) =
      _$_CreatePlanState.fromJson;

  @override
  String get name;
  @override
  List<Exercise> get exercises;
  @override
  List<Exercise> get selectedExercises;
  @override
  @JsonKey(ignore: true)
  _$CreatePlanStateCopyWith<_CreatePlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

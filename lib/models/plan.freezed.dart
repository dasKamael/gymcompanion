// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
class _$PlanTearOff {
  const _$PlanTearOff();

  _Plan call(
      {required int id,
      required String name,
      required List<Exercise> exercises,
      required List<DateTime> lastTrained}) {
    return _Plan(
      id: id,
      name: name,
      exercises: exercises,
      lastTrained: lastTrained,
    );
  }

  Plan fromJson(Map<String, Object?> json) {
    return Plan.fromJson(json);
  }
}

/// @nodoc
const $Plan = _$PlanTearOff();

/// @nodoc
mixin _$Plan {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Exercise> get exercises => throw _privateConstructorUsedError;
  List<DateTime> get lastTrained => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      List<Exercise> exercises,
      List<DateTime> lastTrained});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res> implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  final Plan _value;
  // ignore: unused_field
  final $Res Function(Plan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? exercises = freezed,
    Object? lastTrained = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      lastTrained: lastTrained == freezed
          ? _value.lastTrained
          : lastTrained // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
abstract class _$PlanCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$PlanCopyWith(_Plan value, $Res Function(_Plan) then) =
      __$PlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      List<Exercise> exercises,
      List<DateTime> lastTrained});
}

/// @nodoc
class __$PlanCopyWithImpl<$Res> extends _$PlanCopyWithImpl<$Res>
    implements _$PlanCopyWith<$Res> {
  __$PlanCopyWithImpl(_Plan _value, $Res Function(_Plan) _then)
      : super(_value, (v) => _then(v as _Plan));

  @override
  _Plan get _value => super._value as _Plan;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? exercises = freezed,
    Object? lastTrained = freezed,
  }) {
    return _then(_Plan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      lastTrained: lastTrained == freezed
          ? _value.lastTrained
          : lastTrained // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Plan implements _Plan {
  const _$_Plan(
      {required this.id,
      required this.name,
      required this.exercises,
      required this.lastTrained});

  factory _$_Plan.fromJson(Map<String, dynamic> json) => _$$_PlanFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final List<Exercise> exercises;
  @override
  final List<DateTime> lastTrained;

  @override
  String toString() {
    return 'Plan(id: $id, name: $name, exercises: $exercises, lastTrained: $lastTrained)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Plan &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.exercises, exercises) &&
            const DeepCollectionEquality()
                .equals(other.lastTrained, lastTrained));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(exercises),
      const DeepCollectionEquality().hash(lastTrained));

  @JsonKey(ignore: true)
  @override
  _$PlanCopyWith<_Plan> get copyWith =>
      __$PlanCopyWithImpl<_Plan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanToJson(this);
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
      {required int id,
      required String name,
      required List<Exercise> exercises,
      required List<DateTime> lastTrained}) = _$_Plan;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$_Plan.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<Exercise> get exercises;
  @override
  List<DateTime> get lastTrained;
  @override
  @JsonKey(ignore: true)
  _$PlanCopyWith<_Plan> get copyWith => throw _privateConstructorUsedError;
}

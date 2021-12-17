// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'plan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanState _$PlanStateFromJson(Map<String, dynamic> json) {
  return _PlanState.fromJson(json);
}

/// @nodoc
class _$PlanStateTearOff {
  const _$PlanStateTearOff();

  _PlanState call({required List<Plan> plans}) {
    return _PlanState(
      plans: plans,
    );
  }

  PlanState fromJson(Map<String, Object?> json) {
    return PlanState.fromJson(json);
  }
}

/// @nodoc
const $PlanState = _$PlanStateTearOff();

/// @nodoc
mixin _$PlanState {
  List<Plan> get plans => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanStateCopyWith<PlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanStateCopyWith<$Res> {
  factory $PlanStateCopyWith(PlanState value, $Res Function(PlanState) then) =
      _$PlanStateCopyWithImpl<$Res>;
  $Res call({List<Plan> plans});
}

/// @nodoc
class _$PlanStateCopyWithImpl<$Res> implements $PlanStateCopyWith<$Res> {
  _$PlanStateCopyWithImpl(this._value, this._then);

  final PlanState _value;
  // ignore: unused_field
  final $Res Function(PlanState) _then;

  @override
  $Res call({
    Object? plans = freezed,
  }) {
    return _then(_value.copyWith(
      plans: plans == freezed
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
    ));
  }
}

/// @nodoc
abstract class _$PlanStateCopyWith<$Res> implements $PlanStateCopyWith<$Res> {
  factory _$PlanStateCopyWith(
          _PlanState value, $Res Function(_PlanState) then) =
      __$PlanStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Plan> plans});
}

/// @nodoc
class __$PlanStateCopyWithImpl<$Res> extends _$PlanStateCopyWithImpl<$Res>
    implements _$PlanStateCopyWith<$Res> {
  __$PlanStateCopyWithImpl(_PlanState _value, $Res Function(_PlanState) _then)
      : super(_value, (v) => _then(v as _PlanState));

  @override
  _PlanState get _value => super._value as _PlanState;

  @override
  $Res call({
    Object? plans = freezed,
  }) {
    return _then(_PlanState(
      plans: plans == freezed
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanState implements _PlanState {
  const _$_PlanState({required this.plans});

  factory _$_PlanState.fromJson(Map<String, dynamic> json) =>
      _$$_PlanStateFromJson(json);

  @override
  final List<Plan> plans;

  @override
  String toString() {
    return 'PlanState(plans: $plans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanState &&
            const DeepCollectionEquality().equals(other.plans, plans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(plans));

  @JsonKey(ignore: true)
  @override
  _$PlanStateCopyWith<_PlanState> get copyWith =>
      __$PlanStateCopyWithImpl<_PlanState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanStateToJson(this);
  }
}

abstract class _PlanState implements PlanState {
  const factory _PlanState({required List<Plan> plans}) = _$_PlanState;

  factory _PlanState.fromJson(Map<String, dynamic> json) =
      _$_PlanState.fromJson;

  @override
  List<Plan> get plans;
  @override
  @JsonKey(ignore: true)
  _$PlanStateCopyWith<_PlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'init_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitPageState _$InitPageStateFromJson(Map<String, dynamic> json) {
  return _InitPageState.fromJson(json);
}

/// @nodoc
class _$InitPageStateTearOff {
  const _$InitPageStateTearOff();

  _InitPageState call() {
    return const _InitPageState();
  }

  InitPageState fromJson(Map<String, Object?> json) {
    return InitPageState.fromJson(json);
  }
}

/// @nodoc
const $InitPageState = _$InitPageStateTearOff();

/// @nodoc
mixin _$InitPageState {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitPageStateCopyWith<$Res> {
  factory $InitPageStateCopyWith(
          InitPageState value, $Res Function(InitPageState) then) =
      _$InitPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitPageStateCopyWithImpl<$Res>
    implements $InitPageStateCopyWith<$Res> {
  _$InitPageStateCopyWithImpl(this._value, this._then);

  final InitPageState _value;
  // ignore: unused_field
  final $Res Function(InitPageState) _then;
}

/// @nodoc
abstract class _$InitPageStateCopyWith<$Res> {
  factory _$InitPageStateCopyWith(
          _InitPageState value, $Res Function(_InitPageState) then) =
      __$InitPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitPageStateCopyWithImpl<$Res>
    extends _$InitPageStateCopyWithImpl<$Res>
    implements _$InitPageStateCopyWith<$Res> {
  __$InitPageStateCopyWithImpl(
      _InitPageState _value, $Res Function(_InitPageState) _then)
      : super(_value, (v) => _then(v as _InitPageState));

  @override
  _InitPageState get _value => super._value as _InitPageState;
}

/// @nodoc
@JsonSerializable()
class _$_InitPageState implements _InitPageState {
  const _$_InitPageState();

  factory _$_InitPageState.fromJson(Map<String, dynamic> json) =>
      _$$_InitPageStateFromJson(json);

  @override
  String toString() {
    return 'InitPageState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitPageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitPageStateToJson(this);
  }
}

abstract class _InitPageState implements InitPageState {
  const factory _InitPageState() = _$_InitPageState;

  factory _InitPageState.fromJson(Map<String, dynamic> json) =
      _$_InitPageState.fromJson;
}

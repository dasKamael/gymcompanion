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

  _InitPageState call({required bool isLoading}) {
    return _InitPageState(
      isLoading: isLoading,
    );
  }

  InitPageState fromJson(Map<String, Object?> json) {
    return InitPageState.fromJson(json);
  }
}

/// @nodoc
const $InitPageState = _$InitPageStateTearOff();

/// @nodoc
mixin _$InitPageState {
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitPageStateCopyWith<InitPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitPageStateCopyWith<$Res> {
  factory $InitPageStateCopyWith(
          InitPageState value, $Res Function(InitPageState) then) =
      _$InitPageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$InitPageStateCopyWithImpl<$Res>
    implements $InitPageStateCopyWith<$Res> {
  _$InitPageStateCopyWithImpl(this._value, this._then);

  final InitPageState _value;
  // ignore: unused_field
  final $Res Function(InitPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitPageStateCopyWith<$Res>
    implements $InitPageStateCopyWith<$Res> {
  factory _$InitPageStateCopyWith(
          _InitPageState value, $Res Function(_InitPageState) then) =
      __$InitPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
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

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_InitPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitPageState implements _InitPageState {
  const _$_InitPageState({required this.isLoading});

  factory _$_InitPageState.fromJson(Map<String, dynamic> json) =>
      _$$_InitPageStateFromJson(json);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'InitPageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitPageState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$InitPageStateCopyWith<_InitPageState> get copyWith =>
      __$InitPageStateCopyWithImpl<_InitPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitPageStateToJson(this);
  }
}

abstract class _InitPageState implements InitPageState {
  const factory _InitPageState({required bool isLoading}) = _$_InitPageState;

  factory _InitPageState.fromJson(Map<String, dynamic> json) =
      _$_InitPageState.fromJson;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$InitPageStateCopyWith<_InitPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

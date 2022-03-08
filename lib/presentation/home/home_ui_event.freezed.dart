// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUiEventTearOff {
  const _$HomeUiEventTearOff();

  SnackBar<T> snackBar<T>(String message) {
    return SnackBar<T>(
      message,
    );
  }
}

/// @nodoc
const $HomeUiEvent = _$HomeUiEventTearOff();

/// @nodoc
mixin _$HomeUiEvent<T> {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) snackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? snackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? snackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBar<T> value) snackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SnackBar<T> value)? snackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBar<T> value)? snackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUiEventCopyWith<T, HomeUiEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiEventCopyWith<T, $Res> {
  factory $HomeUiEventCopyWith(
          HomeUiEvent<T> value, $Res Function(HomeUiEvent<T>) then) =
      _$HomeUiEventCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$HomeUiEventCopyWithImpl<T, $Res>
    implements $HomeUiEventCopyWith<T, $Res> {
  _$HomeUiEventCopyWithImpl(this._value, this._then);

  final HomeUiEvent<T> _value;
  // ignore: unused_field
  final $Res Function(HomeUiEvent<T>) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SnackBarCopyWith<T, $Res>
    implements $HomeUiEventCopyWith<T, $Res> {
  factory $SnackBarCopyWith(
          SnackBar<T> value, $Res Function(SnackBar<T>) then) =
      _$SnackBarCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$SnackBarCopyWithImpl<T, $Res> extends _$HomeUiEventCopyWithImpl<T, $Res>
    implements $SnackBarCopyWith<T, $Res> {
  _$SnackBarCopyWithImpl(SnackBar<T> _value, $Res Function(SnackBar<T>) _then)
      : super(_value, (v) => _then(v as SnackBar<T>));

  @override
  SnackBar<T> get _value => super._value as SnackBar<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SnackBar<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SnackBar<T> implements SnackBar<T> {
  const _$SnackBar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeUiEvent<$T>.snackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnackBar<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $SnackBarCopyWith<T, SnackBar<T>> get copyWith =>
      _$SnackBarCopyWithImpl<T, SnackBar<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) snackBar,
  }) {
    return snackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? snackBar,
  }) {
    return snackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? snackBar,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBar<T> value) snackBar,
  }) {
    return snackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SnackBar<T> value)? snackBar,
  }) {
    return snackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBar<T> value)? snackBar,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(this);
    }
    return orElse();
  }
}

abstract class SnackBar<T> implements HomeUiEvent<T> {
  const factory SnackBar(String message) = _$SnackBar<T>;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $SnackBarCopyWith<T, SnackBar<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

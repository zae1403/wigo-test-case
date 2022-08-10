// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServerFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(String message) sessionEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? sessionEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? sessionEnded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerFailure value) $default, {
    required TResult Function(_ServerFailureSessionEnded value) sessionEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(_ServerFailureSessionEnded value)? sessionEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(_ServerFailureSessionEnded value)? sessionEnded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  final ServerFailure _value;
  // ignore: unused_field
  final $Res Function(ServerFailure) _then;

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
abstract class _$$_ServerFailureCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, (v) => _then(v as _$_ServerFailure));

  @override
  _$_ServerFailure get _value => super._value as _$_ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ServerFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      __$$_ServerFailureCopyWithImpl<_$_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(String message) sessionEnded,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? sessionEnded,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? sessionEnded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerFailure value) $default, {
    required TResult Function(_ServerFailureSessionEnded value) sessionEnded,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(_ServerFailureSessionEnded value)? sessionEnded,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(_ServerFailureSessionEnded value)? sessionEnded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements ServerFailure {
  const factory _ServerFailure({required final String message}) =
      _$_ServerFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerFailureSessionEndedCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$_ServerFailureSessionEndedCopyWith(
          _$_ServerFailureSessionEnded value,
          $Res Function(_$_ServerFailureSessionEnded) then) =
      __$$_ServerFailureSessionEndedCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_ServerFailureSessionEndedCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements _$$_ServerFailureSessionEndedCopyWith<$Res> {
  __$$_ServerFailureSessionEndedCopyWithImpl(
      _$_ServerFailureSessionEnded _value,
      $Res Function(_$_ServerFailureSessionEnded) _then)
      : super(_value, (v) => _then(v as _$_ServerFailureSessionEnded));

  @override
  _$_ServerFailureSessionEnded get _value =>
      super._value as _$_ServerFailureSessionEnded;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerFailureSessionEnded(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerFailureSessionEnded implements _ServerFailureSessionEnded {
  const _$_ServerFailureSessionEnded({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ServerFailure.sessionEnded(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailureSessionEnded &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ServerFailureSessionEndedCopyWith<_$_ServerFailureSessionEnded>
      get copyWith => __$$_ServerFailureSessionEndedCopyWithImpl<
          _$_ServerFailureSessionEnded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(String message) sessionEnded,
  }) {
    return sessionEnded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? sessionEnded,
  }) {
    return sessionEnded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? sessionEnded,
    required TResult orElse(),
  }) {
    if (sessionEnded != null) {
      return sessionEnded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerFailure value) $default, {
    required TResult Function(_ServerFailureSessionEnded value) sessionEnded,
  }) {
    return sessionEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(_ServerFailureSessionEnded value)? sessionEnded,
  }) {
    return sessionEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(_ServerFailureSessionEnded value)? sessionEnded,
    required TResult orElse(),
  }) {
    if (sessionEnded != null) {
      return sessionEnded(this);
    }
    return orElse();
  }
}

abstract class _ServerFailureSessionEnded implements ServerFailure {
  const factory _ServerFailureSessionEnded({required final String message}) =
      _$_ServerFailureSessionEnded;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerFailureSessionEndedCopyWith<_$_ServerFailureSessionEnded>
      get copyWith => throw _privateConstructorUsedError;
}

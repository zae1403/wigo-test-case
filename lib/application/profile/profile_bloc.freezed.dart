// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$ProfileFetchedCopyWith<$Res> {
  factory _$$ProfileFetchedCopyWith(
          _$ProfileFetched value, $Res Function(_$ProfileFetched) then) =
      __$$ProfileFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileFetchedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$ProfileFetchedCopyWith<$Res> {
  __$$ProfileFetchedCopyWithImpl(
      _$ProfileFetched _value, $Res Function(_$ProfileFetched) _then)
      : super(_value, (v) => _then(v as _$ProfileFetched));

  @override
  _$ProfileFetched get _value => super._value as _$ProfileFetched;
}

/// @nodoc

class _$ProfileFetched implements ProfileFetched {
  const _$ProfileFetched();

  @override
  String toString() {
    return 'ProfileEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class ProfileFetched implements ProfileEvent {
  const factory ProfileFetched() = _$ProfileFetched;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServerFailure message) failure,
    required TResult Function(User user) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(_ProfileFailure value) failure,
    required TResult Function(_ProfileLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServerFailure message) failure,
    required TResult Function(User user) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(_ProfileFailure value) failure,
    required TResult Function(_ProfileLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ProfileLoadingCopyWith<$Res> {
  factory _$$_ProfileLoadingCopyWith(
          _$_ProfileLoading value, $Res Function(_$_ProfileLoading) then) =
      __$$_ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileLoadingCopyWith<$Res> {
  __$$_ProfileLoadingCopyWithImpl(
      _$_ProfileLoading _value, $Res Function(_$_ProfileLoading) _then)
      : super(_value, (v) => _then(v as _$_ProfileLoading));

  @override
  _$_ProfileLoading get _value => super._value as _$_ProfileLoading;
}

/// @nodoc

class _$_ProfileLoading implements _ProfileLoading {
  const _$_ProfileLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServerFailure message) failure,
    required TResult Function(User user) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(_ProfileFailure value) failure,
    required TResult Function(_ProfileLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoading implements ProfileState {
  const factory _ProfileLoading() = _$_ProfileLoading;
}

/// @nodoc
abstract class _$$_ProfileFailureCopyWith<$Res> {
  factory _$$_ProfileFailureCopyWith(
          _$_ProfileFailure value, $Res Function(_$_ProfileFailure) then) =
      __$$_ProfileFailureCopyWithImpl<$Res>;
  $Res call({ServerFailure message});

  $ServerFailureCopyWith<$Res> get message;
}

/// @nodoc
class __$$_ProfileFailureCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileFailureCopyWith<$Res> {
  __$$_ProfileFailureCopyWithImpl(
      _$_ProfileFailure _value, $Res Function(_$_ProfileFailure) _then)
      : super(_value, (v) => _then(v as _$_ProfileFailure));

  @override
  _$_ProfileFailure get _value => super._value as _$_ProfileFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ProfileFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ServerFailure,
    ));
  }

  @override
  $ServerFailureCopyWith<$Res> get message {
    return $ServerFailureCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$_ProfileFailure implements _ProfileFailure {
  const _$_ProfileFailure(this.message);

  @override
  final ServerFailure message;

  @override
  String toString() {
    return 'ProfileState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileFailureCopyWith<_$_ProfileFailure> get copyWith =>
      __$$_ProfileFailureCopyWithImpl<_$_ProfileFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServerFailure message) failure,
    required TResult Function(User user) loadSuccess,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(_ProfileFailure value) failure,
    required TResult Function(_ProfileLoadSuccess value) loadSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ProfileFailure implements ProfileState {
  const factory _ProfileFailure(final ServerFailure message) =
      _$_ProfileFailure;

  ServerFailure get message;
  @JsonKey(ignore: true)
  _$$_ProfileFailureCopyWith<_$_ProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileLoadSuccessCopyWith<$Res> {
  factory _$$_ProfileLoadSuccessCopyWith(_$_ProfileLoadSuccess value,
          $Res Function(_$_ProfileLoadSuccess) then) =
      __$$_ProfileLoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ProfileLoadSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileLoadSuccessCopyWith<$Res> {
  __$$_ProfileLoadSuccessCopyWithImpl(
      _$_ProfileLoadSuccess _value, $Res Function(_$_ProfileLoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_ProfileLoadSuccess));

  @override
  _$_ProfileLoadSuccess get _value => super._value as _$_ProfileLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_ProfileLoadSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_ProfileLoadSuccess implements _ProfileLoadSuccess {
  const _$_ProfileLoadSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileState.loadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileLoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileLoadSuccessCopyWith<_$_ProfileLoadSuccess> get copyWith =>
      __$$_ProfileLoadSuccessCopyWithImpl<_$_ProfileLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServerFailure message) failure,
    required TResult Function(User user) loadSuccess,
  }) {
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
  }) {
    return loadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServerFailure message)? failure,
    TResult Function(User user)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(_ProfileFailure value) failure,
    required TResult Function(_ProfileLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(_ProfileFailure value)? failure,
    TResult Function(_ProfileLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoadSuccess implements ProfileState {
  const factory _ProfileLoadSuccess(final User user) = _$_ProfileLoadSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$$_ProfileLoadSuccessCopyWith<_$_ProfileLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

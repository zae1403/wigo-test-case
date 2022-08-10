// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool value) rememberMeChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFormEmailChanged value) emailChanged,
    required TResult Function(LoginFormPasswordChanged value) passwordChanged,
    required TResult Function(LoginFormRememberMeChanged value)
        rememberMeChanged,
    required TResult Function(LoginFormSubmitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginFormEventCopyWithImpl<$Res>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  final LoginFormEvent _value;
  // ignore: unused_field
  final $Res Function(LoginFormEvent) _then;
}

/// @nodoc
abstract class _$$LoginFormEmailChangedCopyWith<$Res> {
  factory _$$LoginFormEmailChangedCopyWith(_$LoginFormEmailChanged value,
          $Res Function(_$LoginFormEmailChanged) then) =
      __$$LoginFormEmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$LoginFormEmailChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$$LoginFormEmailChangedCopyWith<$Res> {
  __$$LoginFormEmailChangedCopyWithImpl(_$LoginFormEmailChanged _value,
      $Res Function(_$LoginFormEmailChanged) _then)
      : super(_value, (v) => _then(v as _$LoginFormEmailChanged));

  @override
  _$LoginFormEmailChanged get _value => super._value as _$LoginFormEmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$LoginFormEmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFormEmailChanged
    with DiagnosticableTreeMixin
    implements LoginFormEmailChanged {
  const _$LoginFormEmailChanged(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFormEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormEmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$LoginFormEmailChangedCopyWith<_$LoginFormEmailChanged> get copyWith =>
      __$$LoginFormEmailChangedCopyWithImpl<_$LoginFormEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool value) rememberMeChanged,
    required TResult Function() submitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFormEmailChanged value) emailChanged,
    required TResult Function(LoginFormPasswordChanged value) passwordChanged,
    required TResult Function(LoginFormRememberMeChanged value)
        rememberMeChanged,
    required TResult Function(LoginFormSubmitted value) submitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class LoginFormEmailChanged implements LoginFormEvent {
  const factory LoginFormEmailChanged(final String email) =
      _$LoginFormEmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$LoginFormEmailChangedCopyWith<_$LoginFormEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFormPasswordChangedCopyWith<$Res> {
  factory _$$LoginFormPasswordChangedCopyWith(_$LoginFormPasswordChanged value,
          $Res Function(_$LoginFormPasswordChanged) then) =
      __$$LoginFormPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$LoginFormPasswordChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$$LoginFormPasswordChangedCopyWith<$Res> {
  __$$LoginFormPasswordChangedCopyWithImpl(_$LoginFormPasswordChanged _value,
      $Res Function(_$LoginFormPasswordChanged) _then)
      : super(_value, (v) => _then(v as _$LoginFormPasswordChanged));

  @override
  _$LoginFormPasswordChanged get _value =>
      super._value as _$LoginFormPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$LoginFormPasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFormPasswordChanged
    with DiagnosticableTreeMixin
    implements LoginFormPasswordChanged {
  const _$LoginFormPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormPasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$LoginFormPasswordChangedCopyWith<_$LoginFormPasswordChanged>
      get copyWith =>
          __$$LoginFormPasswordChangedCopyWithImpl<_$LoginFormPasswordChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool value) rememberMeChanged,
    required TResult Function() submitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFormEmailChanged value) emailChanged,
    required TResult Function(LoginFormPasswordChanged value) passwordChanged,
    required TResult Function(LoginFormRememberMeChanged value)
        rememberMeChanged,
    required TResult Function(LoginFormSubmitted value) submitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginFormPasswordChanged implements LoginFormEvent {
  const factory LoginFormPasswordChanged(final String password) =
      _$LoginFormPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$LoginFormPasswordChangedCopyWith<_$LoginFormPasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFormRememberMeChangedCopyWith<$Res> {
  factory _$$LoginFormRememberMeChangedCopyWith(
          _$LoginFormRememberMeChanged value,
          $Res Function(_$LoginFormRememberMeChanged) then) =
      __$$LoginFormRememberMeChangedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$$LoginFormRememberMeChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$$LoginFormRememberMeChangedCopyWith<$Res> {
  __$$LoginFormRememberMeChangedCopyWithImpl(
      _$LoginFormRememberMeChanged _value,
      $Res Function(_$LoginFormRememberMeChanged) _then)
      : super(_value, (v) => _then(v as _$LoginFormRememberMeChanged));

  @override
  _$LoginFormRememberMeChanged get _value =>
      super._value as _$LoginFormRememberMeChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$LoginFormRememberMeChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginFormRememberMeChanged
    with DiagnosticableTreeMixin
    implements LoginFormRememberMeChanged {
  const _$LoginFormRememberMeChanged(this.value);

  @override
  final bool value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormEvent.rememberMeChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFormEvent.rememberMeChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormRememberMeChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$LoginFormRememberMeChangedCopyWith<_$LoginFormRememberMeChanged>
      get copyWith => __$$LoginFormRememberMeChangedCopyWithImpl<
          _$LoginFormRememberMeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool value) rememberMeChanged,
    required TResult Function() submitted,
  }) {
    return rememberMeChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
  }) {
    return rememberMeChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (rememberMeChanged != null) {
      return rememberMeChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFormEmailChanged value) emailChanged,
    required TResult Function(LoginFormPasswordChanged value) passwordChanged,
    required TResult Function(LoginFormRememberMeChanged value)
        rememberMeChanged,
    required TResult Function(LoginFormSubmitted value) submitted,
  }) {
    return rememberMeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
  }) {
    return rememberMeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (rememberMeChanged != null) {
      return rememberMeChanged(this);
    }
    return orElse();
  }
}

abstract class LoginFormRememberMeChanged implements LoginFormEvent {
  const factory LoginFormRememberMeChanged(final bool value) =
      _$LoginFormRememberMeChanged;

  bool get value;
  @JsonKey(ignore: true)
  _$$LoginFormRememberMeChangedCopyWith<_$LoginFormRememberMeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFormSubmittedCopyWith<$Res> {
  factory _$$LoginFormSubmittedCopyWith(_$LoginFormSubmitted value,
          $Res Function(_$LoginFormSubmitted) then) =
      __$$LoginFormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginFormSubmittedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$$LoginFormSubmittedCopyWith<$Res> {
  __$$LoginFormSubmittedCopyWithImpl(
      _$LoginFormSubmitted _value, $Res Function(_$LoginFormSubmitted) _then)
      : super(_value, (v) => _then(v as _$LoginFormSubmitted));

  @override
  _$LoginFormSubmitted get _value => super._value as _$LoginFormSubmitted;
}

/// @nodoc

class _$LoginFormSubmitted
    with DiagnosticableTreeMixin
    implements LoginFormSubmitted {
  const _$LoginFormSubmitted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormEvent.submitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginFormEvent.submitted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginFormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(bool value) rememberMeChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(bool value)? rememberMeChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFormEmailChanged value) emailChanged,
    required TResult Function(LoginFormPasswordChanged value) passwordChanged,
    required TResult Function(LoginFormRememberMeChanged value)
        rememberMeChanged,
    required TResult Function(LoginFormSubmitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFormEmailChanged value)? emailChanged,
    TResult Function(LoginFormPasswordChanged value)? passwordChanged,
    TResult Function(LoginFormRememberMeChanged value)? rememberMeChanged,
    TResult Function(LoginFormSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class LoginFormSubmitted implements LoginFormEvent {
  const factory LoginFormSubmitted() = _$LoginFormSubmitted;
}

/// @nodoc
mixin _$LoginFormState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;

  ///for showing loading indicator
  bool get isSubmitting => throw _privateConstructorUsedError;

  ///for showing auto-validation input fields and show error messages
  bool get showErrorMessages => throw _privateConstructorUsedError;

  ///for showing reponses from infrastructure layer
  Option<Either<ServerFailure, Unit>> get loginFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
  $Res call(
      {GlobalKey<FormState> formKey,
      String emailAddress,
      String password,
      bool rememberMe,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ServerFailure, Unit>> loginFailureOrSuccessOption});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;

  @override
  $Res call({
    Object? formKey = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? loginFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailureOrSuccessOption: loginFailureOrSuccessOption == freezed
          ? _value.loginFailureOrSuccessOption
          : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginFormStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$_LoginFormStateCopyWith(
          _$_LoginFormState value, $Res Function(_$_LoginFormState) then) =
      __$$_LoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {GlobalKey<FormState> formKey,
      String emailAddress,
      String password,
      bool rememberMe,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ServerFailure, Unit>> loginFailureOrSuccessOption});
}

/// @nodoc
class __$$_LoginFormStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$$_LoginFormStateCopyWith<$Res> {
  __$$_LoginFormStateCopyWithImpl(
      _$_LoginFormState _value, $Res Function(_$_LoginFormState) _then)
      : super(_value, (v) => _then(v as _$_LoginFormState));

  @override
  _$_LoginFormState get _value => super._value as _$_LoginFormState;

  @override
  $Res call({
    Object? formKey = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? loginFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_LoginFormState(
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailureOrSuccessOption: loginFailureOrSuccessOption == freezed
          ? _value.loginFailureOrSuccessOption
          : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_LoginFormState extends _LoginFormState with DiagnosticableTreeMixin {
  const _$_LoginFormState(
      {required this.formKey,
      required this.emailAddress,
      required this.password,
      required this.rememberMe,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.loginFailureOrSuccessOption})
      : super._();

  @override
  final GlobalKey<FormState> formKey;
  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final bool rememberMe;

  ///for showing loading indicator
  @override
  final bool isSubmitting;

  ///for showing auto-validation input fields and show error messages
  @override
  final bool showErrorMessages;

  ///for showing reponses from infrastructure layer
  @override
  final Option<Either<ServerFailure, Unit>> loginFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormState(formKey: $formKey, emailAddress: $emailAddress, password: $password, rememberMe: $rememberMe, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, loginFailureOrSuccessOption: $loginFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFormState'))
      ..add(DiagnosticsProperty('formKey', formKey))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('rememberMe', rememberMe))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty(
          'loginFailureOrSuccessOption', loginFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFormState &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.rememberMe, rememberMe) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(
                other.loginFailureOrSuccessOption,
                loginFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(rememberMe),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(loginFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_LoginFormStateCopyWith<_$_LoginFormState> get copyWith =>
      __$$_LoginFormStateCopyWithImpl<_$_LoginFormState>(this, _$identity);
}

abstract class _LoginFormState extends LoginFormState {
  const factory _LoginFormState(
      {required final GlobalKey<FormState> formKey,
      required final String emailAddress,
      required final String password,
      required final bool rememberMe,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final Option<Either<ServerFailure, Unit>>
          loginFailureOrSuccessOption}) = _$_LoginFormState;
  const _LoginFormState._() : super._();

  @override
  GlobalKey<FormState> get formKey;
  @override
  String get emailAddress;
  @override
  String get password;
  @override
  bool get rememberMe;
  @override

  ///for showing loading indicator
  bool get isSubmitting;
  @override

  ///for showing auto-validation input fields and show error messages
  bool get showErrorMessages;
  @override

  ///for showing reponses from infrastructure layer
  Option<Either<ServerFailure, Unit>> get loginFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_LoginFormStateCopyWith<_$_LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

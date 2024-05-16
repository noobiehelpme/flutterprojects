// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) adminLogin,
    required TResult Function() userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? adminLogin,
    TResult? Function()? userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? adminLogin,
    TResult Function()? userLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminLogin value) adminLogin,
    required TResult Function(_UserLogin value) userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminLogin value)? adminLogin,
    TResult? Function(_UserLogin value)? userLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminLogin value)? adminLogin,
    TResult Function(_UserLogin value)? userLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AdminLoginCopyWith<$Res> {
  factory _$$_AdminLoginCopyWith(
          _$_AdminLogin value, $Res Function(_$_AdminLogin) then) =
      __$$_AdminLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AdminLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AdminLogin>
    implements _$$_AdminLoginCopyWith<$Res> {
  __$$_AdminLoginCopyWithImpl(
      _$_AdminLogin _value, $Res Function(_$_AdminLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AdminLogin(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AdminLogin implements _AdminLogin {
  const _$_AdminLogin({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.adminLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminLogin &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminLoginCopyWith<_$_AdminLogin> get copyWith =>
      __$$_AdminLoginCopyWithImpl<_$_AdminLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) adminLogin,
    required TResult Function() userLogin,
  }) {
    return adminLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? adminLogin,
    TResult? Function()? userLogin,
  }) {
    return adminLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? adminLogin,
    TResult Function()? userLogin,
    required TResult orElse(),
  }) {
    if (adminLogin != null) {
      return adminLogin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminLogin value) adminLogin,
    required TResult Function(_UserLogin value) userLogin,
  }) {
    return adminLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminLogin value)? adminLogin,
    TResult? Function(_UserLogin value)? userLogin,
  }) {
    return adminLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminLogin value)? adminLogin,
    TResult Function(_UserLogin value)? userLogin,
    required TResult orElse(),
  }) {
    if (adminLogin != null) {
      return adminLogin(this);
    }
    return orElse();
  }
}

abstract class _AdminLogin implements AuthEvent {
  const factory _AdminLogin(
      {required final String email,
      required final String password}) = _$_AdminLogin;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AdminLoginCopyWith<_$_AdminLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserLoginCopyWith<$Res> {
  factory _$$_UserLoginCopyWith(
          _$_UserLogin value, $Res Function(_$_UserLogin) then) =
      __$$_UserLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UserLogin>
    implements _$$_UserLoginCopyWith<$Res> {
  __$$_UserLoginCopyWithImpl(
      _$_UserLogin _value, $Res Function(_$_UserLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLogin implements _UserLogin {
  const _$_UserLogin();

  @override
  String toString() {
    return 'AuthEvent.userLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) adminLogin,
    required TResult Function() userLogin,
  }) {
    return userLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? adminLogin,
    TResult? Function()? userLogin,
  }) {
    return userLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? adminLogin,
    TResult Function()? userLogin,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminLogin value) adminLogin,
    required TResult Function(_UserLogin value) userLogin,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminLogin value)? adminLogin,
    TResult? Function(_UserLogin value)? userLogin,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminLogin value)? adminLogin,
    TResult Function(_UserLogin value)? userLogin,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(this);
    }
    return orElse();
  }
}

abstract class _UserLogin implements AuthEvent {
  const factory _UserLogin() = _$_UserLogin;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, dynamic>> get loginSuccessOrNot =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading, Option<Either<AuthFailure, dynamic>> loginSuccessOrNot});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loginSuccessOrNot = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginSuccessOrNot: null == loginSuccessOrNot
          ? _value.loginSuccessOrNot
          : loginSuccessOrNot // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, Option<Either<AuthFailure, dynamic>> loginSuccessOrNot});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loginSuccessOrNot = null,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginSuccessOrNot: null == loginSuccessOrNot
          ? _value.loginSuccessOrNot
          : loginSuccessOrNot // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isLoading, required this.loginSuccessOrNot});

  @override
  final bool isLoading;
  @override
  final Option<Either<AuthFailure, dynamic>> loginSuccessOrNot;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, loginSuccessOrNot: $loginSuccessOrNot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loginSuccessOrNot, loginSuccessOrNot) ||
                other.loginSuccessOrNot == loginSuccessOrNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, loginSuccessOrNot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLoading,
      required final Option<Either<AuthFailure, dynamic>>
          loginSuccessOrNot}) = _$_AuthState;

  @override
  bool get isLoading;
  @override
  Option<Either<AuthFailure, dynamic>> get loginSuccessOrNot;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

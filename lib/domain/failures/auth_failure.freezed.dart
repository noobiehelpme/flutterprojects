// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailures,
    required TResult Function(String message) clientFailures,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailures,
    TResult? Function(String message)? clientFailures,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailures,
    TResult Function(String message)? clientFailures,
    TResult Function(String message)? networkFailures,
    TResult Function(String message)? unknownFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailures value) serverFailures,
    required TResult Function(_ClientFailures value) clientFailures,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailures value)? serverFailures,
    TResult? Function(_ClientFailures value)? clientFailures,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailures value)? serverFailures,
    TResult Function(_ClientFailures value)? clientFailures,
    TResult Function(_NetworkFailures value)? networkFailures,
    TResult Function(_UnknownFailures value)? unknownFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerFailuresCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_ServerFailuresCopyWith(
          _$_ServerFailures value, $Res Function(_$_ServerFailures) then) =
      __$$_ServerFailuresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ServerFailuresCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_ServerFailures>
    implements _$$_ServerFailuresCopyWith<$Res> {
  __$$_ServerFailuresCopyWithImpl(
      _$_ServerFailures _value, $Res Function(_$_ServerFailures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ServerFailures(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerFailures implements _ServerFailures {
  const _$_ServerFailures({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.serverFailures(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailures &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerFailuresCopyWith<_$_ServerFailures> get copyWith =>
      __$$_ServerFailuresCopyWithImpl<_$_ServerFailures>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailures,
    required TResult Function(String message) clientFailures,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) {
    return serverFailures(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailures,
    TResult? Function(String message)? clientFailures,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) {
    return serverFailures?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailures,
    TResult Function(String message)? clientFailures,
    TResult Function(String message)? networkFailures,
    TResult Function(String message)? unknownFailures,
    required TResult orElse(),
  }) {
    if (serverFailures != null) {
      return serverFailures(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailures value) serverFailures,
    required TResult Function(_ClientFailures value) clientFailures,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) {
    return serverFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailures value)? serverFailures,
    TResult? Function(_ClientFailures value)? clientFailures,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) {
    return serverFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailures value)? serverFailures,
    TResult Function(_ClientFailures value)? clientFailures,
    TResult Function(_NetworkFailures value)? networkFailures,
    TResult Function(_UnknownFailures value)? unknownFailures,
    required TResult orElse(),
  }) {
    if (serverFailures != null) {
      return serverFailures(this);
    }
    return orElse();
  }
}

abstract class _ServerFailures implements AuthFailure {
  const factory _ServerFailures({required final String message}) =
      _$_ServerFailures;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerFailuresCopyWith<_$_ServerFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClientFailuresCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_ClientFailuresCopyWith(
          _$_ClientFailures value, $Res Function(_$_ClientFailures) then) =
      __$$_ClientFailuresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ClientFailuresCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_ClientFailures>
    implements _$$_ClientFailuresCopyWith<$Res> {
  __$$_ClientFailuresCopyWithImpl(
      _$_ClientFailures _value, $Res Function(_$_ClientFailures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ClientFailures(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClientFailures implements _ClientFailures {
  const _$_ClientFailures({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.clientFailures(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientFailures &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientFailuresCopyWith<_$_ClientFailures> get copyWith =>
      __$$_ClientFailuresCopyWithImpl<_$_ClientFailures>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailures,
    required TResult Function(String message) clientFailures,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) {
    return clientFailures(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailures,
    TResult? Function(String message)? clientFailures,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) {
    return clientFailures?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailures,
    TResult Function(String message)? clientFailures,
    TResult Function(String message)? networkFailures,
    TResult Function(String message)? unknownFailures,
    required TResult orElse(),
  }) {
    if (clientFailures != null) {
      return clientFailures(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailures value) serverFailures,
    required TResult Function(_ClientFailures value) clientFailures,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) {
    return clientFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailures value)? serverFailures,
    TResult? Function(_ClientFailures value)? clientFailures,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) {
    return clientFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailures value)? serverFailures,
    TResult Function(_ClientFailures value)? clientFailures,
    TResult Function(_NetworkFailures value)? networkFailures,
    TResult Function(_UnknownFailures value)? unknownFailures,
    required TResult orElse(),
  }) {
    if (clientFailures != null) {
      return clientFailures(this);
    }
    return orElse();
  }
}

abstract class _ClientFailures implements AuthFailure {
  const factory _ClientFailures({required final String message}) =
      _$_ClientFailures;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ClientFailuresCopyWith<_$_ClientFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkFailuresCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_NetworkFailuresCopyWith(
          _$_NetworkFailures value, $Res Function(_$_NetworkFailures) then) =
      __$$_NetworkFailuresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NetworkFailuresCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_NetworkFailures>
    implements _$$_NetworkFailuresCopyWith<$Res> {
  __$$_NetworkFailuresCopyWithImpl(
      _$_NetworkFailures _value, $Res Function(_$_NetworkFailures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NetworkFailures(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NetworkFailures implements _NetworkFailures {
  const _$_NetworkFailures(
      {this.message = 'Please make sure about your connection..! '});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthFailure.networkFailures(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkFailures &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkFailuresCopyWith<_$_NetworkFailures> get copyWith =>
      __$$_NetworkFailuresCopyWithImpl<_$_NetworkFailures>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailures,
    required TResult Function(String message) clientFailures,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) {
    return networkFailures(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailures,
    TResult? Function(String message)? clientFailures,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) {
    return networkFailures?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailures,
    TResult Function(String message)? clientFailures,
    TResult Function(String message)? networkFailures,
    TResult Function(String message)? unknownFailures,
    required TResult orElse(),
  }) {
    if (networkFailures != null) {
      return networkFailures(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailures value) serverFailures,
    required TResult Function(_ClientFailures value) clientFailures,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) {
    return networkFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailures value)? serverFailures,
    TResult? Function(_ClientFailures value)? clientFailures,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) {
    return networkFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailures value)? serverFailures,
    TResult Function(_ClientFailures value)? clientFailures,
    TResult Function(_NetworkFailures value)? networkFailures,
    TResult Function(_UnknownFailures value)? unknownFailures,
    required TResult orElse(),
  }) {
    if (networkFailures != null) {
      return networkFailures(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailures implements AuthFailure {
  const factory _NetworkFailures({final String message}) = _$_NetworkFailures;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkFailuresCopyWith<_$_NetworkFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownFailuresCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$_UnknownFailuresCopyWith(
          _$_UnknownFailures value, $Res Function(_$_UnknownFailures) then) =
      __$$_UnknownFailuresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnknownFailuresCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_UnknownFailures>
    implements _$$_UnknownFailuresCopyWith<$Res> {
  __$$_UnknownFailuresCopyWithImpl(
      _$_UnknownFailures _value, $Res Function(_$_UnknownFailures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnknownFailures(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnknownFailures implements _UnknownFailures {
  const _$_UnknownFailures(
      {this.message = 'Something went wrong..Please try again later..!'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthFailure.unknownFailures(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnknownFailures &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownFailuresCopyWith<_$_UnknownFailures> get copyWith =>
      __$$_UnknownFailuresCopyWithImpl<_$_UnknownFailures>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailures,
    required TResult Function(String message) clientFailures,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) {
    return unknownFailures(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailures,
    TResult? Function(String message)? clientFailures,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) {
    return unknownFailures?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailures,
    TResult Function(String message)? clientFailures,
    TResult Function(String message)? networkFailures,
    TResult Function(String message)? unknownFailures,
    required TResult orElse(),
  }) {
    if (unknownFailures != null) {
      return unknownFailures(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailures value) serverFailures,
    required TResult Function(_ClientFailures value) clientFailures,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) {
    return unknownFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailures value)? serverFailures,
    TResult? Function(_ClientFailures value)? clientFailures,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) {
    return unknownFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailures value)? serverFailures,
    TResult Function(_ClientFailures value)? clientFailures,
    TResult Function(_NetworkFailures value)? networkFailures,
    TResult Function(_UnknownFailures value)? unknownFailures,
    required TResult orElse(),
  }) {
    if (unknownFailures != null) {
      return unknownFailures(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailures implements AuthFailure {
  const factory _UnknownFailures({final String message}) = _$_UnknownFailures;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownFailuresCopyWith<_$_UnknownFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

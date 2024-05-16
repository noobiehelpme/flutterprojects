// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoleFailures {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? clientFailure,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? networkFailures,
    TResult Function(String message)? unknownFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_NetworkFailures value)? networkFailures,
    TResult Function(_UnknownFailures value)? unknownFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleFailuresCopyWith<RoleFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleFailuresCopyWith<$Res> {
  factory $RoleFailuresCopyWith(
          RoleFailures value, $Res Function(RoleFailures) then) =
      _$RoleFailuresCopyWithImpl<$Res, RoleFailures>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$RoleFailuresCopyWithImpl<$Res, $Val extends RoleFailures>
    implements $RoleFailuresCopyWith<$Res> {
  _$RoleFailuresCopyWithImpl(this._value, this._then);

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
abstract class _$$_ServerFailureCopyWith<$Res>
    implements $RoleFailuresCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$RoleFailuresCopyWithImpl<$Res, _$_ServerFailure>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ServerFailure(
      message: null == message
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
    return 'RoleFailures.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      __$$_ServerFailureCopyWithImpl<_$_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? clientFailure,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? networkFailures,
    TResult Function(String message)? unknownFailures,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_NetworkFailures value)? networkFailures,
    TResult Function(_UnknownFailures value)? unknownFailures,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements RoleFailures {
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
abstract class _$$_ClientFailureCopyWith<$Res>
    implements $RoleFailuresCopyWith<$Res> {
  factory _$$_ClientFailureCopyWith(
          _$_ClientFailure value, $Res Function(_$_ClientFailure) then) =
      __$$_ClientFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ClientFailureCopyWithImpl<$Res>
    extends _$RoleFailuresCopyWithImpl<$Res, _$_ClientFailure>
    implements _$$_ClientFailureCopyWith<$Res> {
  __$$_ClientFailureCopyWithImpl(
      _$_ClientFailure _value, $Res Function(_$_ClientFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ClientFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClientFailure implements _ClientFailure {
  const _$_ClientFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RoleFailures.clientFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientFailureCopyWith<_$_ClientFailure> get copyWith =>
      __$$_ClientFailureCopyWithImpl<_$_ClientFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) {
    return clientFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? clientFailure,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) {
    return clientFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? clientFailure,
    TResult Function(String message)? networkFailures,
    TResult Function(String message)? unknownFailures,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_NetworkFailures value)? networkFailures,
    TResult Function(_UnknownFailures value)? unknownFailures,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements RoleFailures {
  const factory _ClientFailure({required final String message}) =
      _$_ClientFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ClientFailureCopyWith<_$_ClientFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkFailuresCopyWith<$Res>
    implements $RoleFailuresCopyWith<$Res> {
  factory _$$_NetworkFailuresCopyWith(
          _$_NetworkFailures value, $Res Function(_$_NetworkFailures) then) =
      __$$_NetworkFailuresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NetworkFailuresCopyWithImpl<$Res>
    extends _$RoleFailuresCopyWithImpl<$Res, _$_NetworkFailures>
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
    return 'RoleFailures.networkFailures(message: $message)';
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
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) {
    return networkFailures(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? clientFailure,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) {
    return networkFailures?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? clientFailure,
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
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) {
    return networkFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) {
    return networkFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
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

abstract class _NetworkFailures implements RoleFailures {
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
    implements $RoleFailuresCopyWith<$Res> {
  factory _$$_UnknownFailuresCopyWith(
          _$_UnknownFailures value, $Res Function(_$_UnknownFailures) then) =
      __$$_UnknownFailuresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnknownFailuresCopyWithImpl<$Res>
    extends _$RoleFailuresCopyWithImpl<$Res, _$_UnknownFailures>
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
    return 'RoleFailures.unknownFailures(message: $message)';
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
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) clientFailure,
    required TResult Function(String message) networkFailures,
    required TResult Function(String message) unknownFailures,
  }) {
    return unknownFailures(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? clientFailure,
    TResult? Function(String message)? networkFailures,
    TResult? Function(String message)? unknownFailures,
  }) {
    return unknownFailures?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? clientFailure,
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
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailures value) networkFailures,
    required TResult Function(_UnknownFailures value) unknownFailures,
  }) {
    return unknownFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailures value)? networkFailures,
    TResult? Function(_UnknownFailures value)? unknownFailures,
  }) {
    return unknownFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
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

abstract class _UnknownFailures implements RoleFailures {
  const factory _UnknownFailures({final String message}) = _$_UnknownFailures;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownFailuresCopyWith<_$_UnknownFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PopMovieModel? get popMovieModel => throw _privateConstructorUsedError;
  TopratedMovieModel? get topratedMovieModel =>
      throw _privateConstructorUsedError;
  TopRatedShowsModel? get topRatedShowsModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res, MoviesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoaded,
      String? message,
      PopMovieModel? popMovieModel,
      TopratedMovieModel? topratedMovieModel,
      TopRatedShowsModel? topRatedShowsModel});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res, $Val extends MoviesState>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoaded = null,
    Object? message = freezed,
    Object? popMovieModel = freezed,
    Object? topratedMovieModel = freezed,
    Object? topRatedShowsModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      popMovieModel: freezed == popMovieModel
          ? _value.popMovieModel
          : popMovieModel // ignore: cast_nullable_to_non_nullable
              as PopMovieModel?,
      topratedMovieModel: freezed == topratedMovieModel
          ? _value.topratedMovieModel
          : topratedMovieModel // ignore: cast_nullable_to_non_nullable
              as TopratedMovieModel?,
      topRatedShowsModel: freezed == topRatedShowsModel
          ? _value.topRatedShowsModel
          : topRatedShowsModel // ignore: cast_nullable_to_non_nullable
              as TopRatedShowsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoviesStateCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$$_MoviesStateCopyWith(
          _$_MoviesState value, $Res Function(_$_MoviesState) then) =
      __$$_MoviesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoaded,
      String? message,
      PopMovieModel? popMovieModel,
      TopratedMovieModel? topratedMovieModel,
      TopRatedShowsModel? topRatedShowsModel});
}

/// @nodoc
class __$$_MoviesStateCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$_MoviesState>
    implements _$$_MoviesStateCopyWith<$Res> {
  __$$_MoviesStateCopyWithImpl(
      _$_MoviesState _value, $Res Function(_$_MoviesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoaded = null,
    Object? message = freezed,
    Object? popMovieModel = freezed,
    Object? topratedMovieModel = freezed,
    Object? topRatedShowsModel = freezed,
  }) {
    return _then(_$_MoviesState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      popMovieModel: freezed == popMovieModel
          ? _value.popMovieModel
          : popMovieModel // ignore: cast_nullable_to_non_nullable
              as PopMovieModel?,
      topratedMovieModel: freezed == topratedMovieModel
          ? _value.topratedMovieModel
          : topratedMovieModel // ignore: cast_nullable_to_non_nullable
              as TopratedMovieModel?,
      topRatedShowsModel: freezed == topRatedShowsModel
          ? _value.topRatedShowsModel
          : topRatedShowsModel // ignore: cast_nullable_to_non_nullable
              as TopRatedShowsModel?,
    ));
  }
}

/// @nodoc

class _$_MoviesState implements _MoviesState {
  const _$_MoviesState(
      {required this.isLoading,
      required this.isLoaded,
      this.message,
      this.popMovieModel,
      this.topratedMovieModel,
      this.topRatedShowsModel});

  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final String? message;
  @override
  final PopMovieModel? popMovieModel;
  @override
  final TopratedMovieModel? topratedMovieModel;
  @override
  final TopRatedShowsModel? topRatedShowsModel;

  @override
  String toString() {
    return 'MoviesState(isLoading: $isLoading, isLoaded: $isLoaded, message: $message, popMovieModel: $popMovieModel, topratedMovieModel: $topratedMovieModel, topRatedShowsModel: $topRatedShowsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.popMovieModel, popMovieModel) ||
                other.popMovieModel == popMovieModel) &&
            (identical(other.topratedMovieModel, topratedMovieModel) ||
                other.topratedMovieModel == topratedMovieModel) &&
            (identical(other.topRatedShowsModel, topRatedShowsModel) ||
                other.topRatedShowsModel == topRatedShowsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoaded, message,
      popMovieModel, topratedMovieModel, topRatedShowsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesStateCopyWith<_$_MoviesState> get copyWith =>
      __$$_MoviesStateCopyWithImpl<_$_MoviesState>(this, _$identity);
}

abstract class _MoviesState implements MoviesState {
  const factory _MoviesState(
      {required final bool isLoading,
      required final bool isLoaded,
      final String? message,
      final PopMovieModel? popMovieModel,
      final TopratedMovieModel? topratedMovieModel,
      final TopRatedShowsModel? topRatedShowsModel}) = _$_MoviesState;

  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  String? get message;
  @override
  PopMovieModel? get popMovieModel;
  @override
  TopratedMovieModel? get topratedMovieModel;
  @override
  TopRatedShowsModel? get topRatedShowsModel;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesStateCopyWith<_$_MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

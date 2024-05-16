import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies_failure.freezed.dart';

@freezed
class MoviesFailure with _$MoviesFailure {
  const factory MoviesFailure.serverError() = _ServerError;
  const factory MoviesFailure.clientFailure() = _ClientFailure;
  const factory MoviesFailure.unAuthorised() = _UnAuthorised;

}

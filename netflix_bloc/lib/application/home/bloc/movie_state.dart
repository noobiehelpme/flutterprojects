import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_bloc/domain/models/popmovie_model.dart';
import 'package:netflix_bloc/domain/models/toprated_model.dart';
import 'package:netflix_bloc/domain/models/topshows.dart';

part 'movie_state.freezed.dart';
@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState({
    required bool isLoading,
    required bool isLoaded,
    String? message,
    PopMovieModel? popMovieModel,
    TopratedMovieModel? topratedMovieModel,
    TopRatedShowsModel? topRatedShowsModel,
  }) = _MoviesState;
}

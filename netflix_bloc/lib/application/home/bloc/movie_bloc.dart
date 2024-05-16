import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repository/get_movies.dart';
import 'movie_state.dart';

part 'movie_bloc.freezed.dart';
part 'movie_event.dart';

@injectable
class MovieBloc extends Bloc<MovieEvent, MoviesState> {
  MovieBloc(this.getMovieCtrl)
      : super(const MoviesState(isLoading: true, isLoaded: false)) {
    on<_GetData>((event, emit) async {
      try {
        final popularModels = await getMovieCtrl.getPopularMovies();
          final topRated = await getMovieCtrl.getTopRatedMovies();
        final topRatedShows = await getMovieCtrl.getTopShows();
        emit(MoviesState(
            isLoading: false, isLoaded: true, topratedMovieModel: topRated,topRatedShowsModel: topRatedShows,popMovieModel: popularModels));
      } catch (e) {
        emit(const MoviesState(isLoading: false, isLoaded: true));
      }
    });
  }

  final GetMoviesRepo getMovieCtrl;
}

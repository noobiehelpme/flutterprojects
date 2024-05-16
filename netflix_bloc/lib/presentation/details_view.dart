import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/application/home/bloc/movie_bloc.dart';
import 'package:netflix_bloc/domain/infrastructure/getmovies.dart';
import 'package:netflix_bloc/presentation/widgets/custom_list.dart';

import '../application/home/bloc/movie_state.dart';

class TrendinPage extends StatelessWidget {
  TrendinPage({super.key});
  final getMovies = GetMovies();

  @override
  Widget build(BuildContext context) {
    context.read<MovieBloc>().add(const MovieEvent.getData());
    getMovies.getPopularMovies();
    getMovies.getTopRatedMovies();
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 5,
          // bottom: TabBar(tabs: [Text("Movies"),Text("Shows")]),
        ),
        body: Center(child: BlocBuilder<MovieBloc, MoviesState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const CircularProgressIndicator(
                strokeWidth: 5,
              );
            } else if (state.isLoaded) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    CustomList(models: state.popMovieModel, title: ""),
                    //        Text(
                    //   "Popular Movies",
                    //   style:
                    //       TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    // ),
                    //      CustomList(
                    //     models: state.topratedMovieModel, title: "popular model")
                  ],
                ),
              );
            }
            return Container();
          },
        )),
      ),
    );
  }
}

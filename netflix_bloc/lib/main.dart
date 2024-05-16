import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/application/home/bloc/movie_bloc.dart';
import 'package:netflix_bloc/core/di/injector.dart';
import 'package:netflix_bloc/presentation/home_view.dart';
import 'package:netflix_bloc/presentation/view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MovieBloc>(),
        )
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          home: Home()),
    );
  }
}

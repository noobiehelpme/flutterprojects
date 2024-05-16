import 'package:flutter/material.dart';
import 'package:sonylive/home_details.dart';
import 'package:sonylive/home_view.dart';
import 'package:sonylive/movie_details.dart';
import 'package:sonylive/splash.dart';
import 'package:sonylive/widgets/settings_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  SplashView(),
    );
  }
}


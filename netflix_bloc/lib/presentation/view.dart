
import 'package:flutter/material.dart';
import 'package:netflix_bloc/domain/models/popmovie_model.dart';
import 'package:netflix_bloc/domain/models/toprated_model.dart';
import 'package:netflix_bloc/presentation/details_view.dart';
import 'package:netflix_bloc/presentation/home_view.dart';
import 'package:netflix_bloc/presentation/shows_view.dart';
import 'package:netflix_bloc/presentation/widgets/custom_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          toolbarHeight: 80,
          title: const Text('Netflix',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.w700)),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notes_outlined,
                color: Colors.white,
                size: 30,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                )),
            const SizedBox(width: 16)
          ],
          bottom: const TabBar(
            indicator: BoxDecoration(color: Colors.transparent),
            unselectedLabelStyle: TextStyle(fontSize: 13),
            unselectedLabelColor: Color.fromARGB(255, 77, 72, 71),
            labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            labelColor: Colors.white,
            tabs: [
              Tab(text: 'Popular Movies'),
              Tab(text: 'TopRated Movies'),
              Tab(text: 'Popular Shows'),    
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            HomeView(),
            ShowsView(),
            TrendinPage()

          ],
        ),
      ),
    );
  }
}

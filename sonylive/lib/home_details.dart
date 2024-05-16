import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListBuild extends StatelessWidget {
  const ListBuild({super.key});

  @override
  Widget build(BuildContext context) {
    List shows = ['Shows', 'Movies', 'Tv', 'Trending', 'Popular'];
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: shows.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Text(
                  shows[index],
                  style: TextStyle(color: Colors.black, fontSize: 22),
                );
              })
        ],
      )),
    );
  }
}

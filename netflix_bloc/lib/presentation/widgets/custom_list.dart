import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/details_view.dart';
import 'package:netflix_bloc/presentation/movie_details.dart';

import '../../core/api/uri.dart';

class CustomList extends StatelessWidget {
  CustomList({super.key, required this.models, required this.title});
  dynamic models;
  String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 4 / 8),
          itemCount: models.results!.length,
          shrinkWrap: true,
          primary: false,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => Navigator.of(context,)
                    .push(MaterialPageRoute(builder: (context) => Details(models: models.results[index],))),
                child: Card(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Column(
                          children: [
                            Image.network(ApiEndpoints.posterPath +
                                models.results[index].posterPath!),
                            Text(
                              models.results![index].title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                ),
              )),
    );
  }
}

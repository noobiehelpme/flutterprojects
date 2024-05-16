import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  MovieDetails({super.key});
  List shows = ['Shows', 'Movies', 'Tv', 'Trending', 'Popular'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        children: [
          Stack(
            children: [
              //  Image.network(
              // "https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_FMjpg_UX1000_.jpg"),
              Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Container(
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_FMjpg_UX1000_.jpg"),
                ),
              ),
              const Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
              )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // const Text(
                    //   "Shows",
                    //   style: TextStyle(
                    //       fontSize: 40,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white),
                    // ),
                    // const Text(
                    //   "Shows",
                    //   style: TextStyle(
                    //       fontSize: 40,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white),
                    // ),
                    // const Text(
                    //   "Shows",
                    //   style: TextStyle(
                    //       fontSize: 40,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white),
                    // ),
                    // const Text(
                    //   "Shows",
                    //   style: TextStyle(
                    //       fontSize: 40,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white),
                    // )
                    ListView.builder(
                      primary: false,
                        itemCount: shows.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Text(shows[index],style: TextStyle(color: Colors.white,fontSize: 25),);
                        })
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 30.0,
                  offset: Offset(0.0, 0.75))
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  const Text(
                    "List",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: TextButton(
                  child: const Text(
                    'Watch',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                width: 120,
                height: 60,
              ),
              Column(
                children: [
                  const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  const Text(
                    "Share",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}

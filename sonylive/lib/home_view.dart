import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  List<String> navbarItem = [
    'KBC',
    '#WatchFree',
    'TV Shows',
    'Originals',
    'Sports',
    'Movies',
    'Games',
  ];
  ScreenMainPage({super.key});
  // final getMovies = GetMovies();

  @override
  Widget build(BuildContext context) {
    // context.read<MovieBloc>().add(GetData());
    int currentindex = 0;
    // getMovies.getPopularMovies();
    // getMovies.getTopRatedMovies();
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: (() {}),
          //   icon: const Image(
          //     image: NetworkImage(
          //       'https://cdn.grabon.in/gograbon/images/merchant/1620886204280/sonyliv-logo.jpg',
          //     ),
          //   ),
          // ),

          leading: Image.network(
              'https://cdn.grabon.in/gograbon/images/merchant/1620886204280/sonyliv-logo.jpg'),
          actions: [
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                primary: false,
                itemCount: navbarItem.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      // color: Colors.transparent,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Center(
                      child: Text(
                        navbarItem[index],
                        style: const TextStyle(
                          fontSize: 19,
                          // backgroundColor: Colors.black,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                })
          ],
          backgroundColor: Colors.transparent,
        ),

        // appBar: AppBar(
        //   toolbarHeight: 5,
        //   bottom: const TabBar(tabs: [Text('Movies')]),
        // ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          primary: false,
          child: Column(
            children: [
              Image.network(
                'https://m.media-amazon.com/images/M/MV5BZjZlNGRhNTQtZTY1Ni00MjdhLWJhYjEtN2NkMjVmNTAwMjZmXkEyXkFqcGdeQXVyMTEzNzg0Mjkx._V1_SX233_CR0,0,233,345_AL_.jpg',
                fit: BoxFit.cover,
                width: double.infinity,

                // height: double.infinity,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 13, left: 8, top: 2, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'My List',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              // Container(
              //   child: BlocBuilder<MovieBloc, MovieState>(
              //     builder: (context, state) {
              //       if (state is MovieLoading) {
              //         return const CircularProgressIndicator(
              //           strokeWidth: 2,
              //         );
              //       } else if (state is MovieLoaded) {
              //         return SingleChildScrollView(
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text('Todays Hot Picks'),
              //               CustomList(
              //                   models: state.popularModels,
              //                   title: 'Popular Movie Model')
              //             ],
              //           ),
              //         );
              //       }
              //       return Container();
              //     },
              //   ),
              // ),
            ],
          ),
        ),

        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        // ),
        // body: Center(
        //   child: Text('Main Page')),

        // body: Column(
        //   children: [
        //     Container(

        //       padding: const EdgeInsets.all(8.0),
        //       child: Image(
        //         height: 600,
        //         width: 500,
        //           image: NetworkImage(
        //               'https://dnm.nflximg.net/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABWGQibHkYFKZCP7B3-1er-Cz_7Hg7-YvUqaKbAJArxehSWKpgRWqzLEpTwGZ_UvQLzho_3BjNYkwo__HPVWRx7U3wAyDS4vOsWvstTd4C7oEJvehGjFX2axxH0aGXXOXK4x3PA.jpg?r=606')),
        //     ),
        //   ],
        // ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            selectedItemColor: Colors.yellow,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white,

            //backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.workspace_premium), label: 'Premium'),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: 'My List'),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'More'),
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/api/uri.dart';

class Details extends StatelessWidget {
   Details({super.key ,required this.models});
  dynamic models;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
            
        children: [
          
          Image.network(
              
              ApiEndpoints.posterPath + models.posterPath!),
          Text(
            models.title,
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          Text(models.overview,
          style: TextStyle(
             color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold
          ),)
        ],
      )),
    );
  }
}

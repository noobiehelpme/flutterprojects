import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class HeadRights extends StatelessWidget {
  const HeadRights(
      {super.key,
      required this.hinttext,
      required this.hinttext2,
      required this.hinttext3});

  final String hinttext;
  final String hinttext2;
  final String hinttext3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kpadding8,
        child: SizedBox(
          width: 370,
          height: 70,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            color: kdarkbluecolor,
            child: Column(children: [
              ListTile(
                leading: Text(
                  hinttext,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfont,
                      color: kwhite),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        hinttext2,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: kfont,
                            color: kwhite),
                      ),
                    ),
                    Text(
                      hinttext3,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: kfont,
                          color: kwhite),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

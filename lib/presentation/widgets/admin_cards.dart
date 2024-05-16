import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class KCards extends StatelessWidget {
  const KCards({super.key, required this.hinttext, required this.onPressed});

  final String hinttext;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kpadding8,
        child: SizedBox(
          width: 350,
          height: 130,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: kbluecolor,
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
              ),
              Padding(
                padding: kpaddingright10,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                      backgroundColor: kwhite,
                      radius: 20,
                      child: IconButton(
                        onPressed:onPressed,
                        icon: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: kblack,
                          size: 20,
                        ),
                      ) //Text
                      ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

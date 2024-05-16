import 'package:flutter/material.dart';
import 'package:gauthentication/core/theme/colors.dart';

class ConText extends StatelessWidget {
  const ConText({super.key,required this.hinttext});
final String hinttext;
  @override
  Widget build(BuildContext context) {
    return Text(hinttext,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: kdarkbluecolor),);
  }
}
import 'package:flutter/material.dart';
import 'package:gauthentication/core/theme/colors.dart';

class Button2 extends StatelessWidget {
   const Button2({
    super.key,
    this.onPressed,
    required this.buttontext,
  });
  final String buttontext;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25, right: 20),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: kdarkbluecolor,
          ),
          child: Text(buttontext)),
    );
  }
}

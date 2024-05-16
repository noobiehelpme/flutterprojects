
import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.buttontext,
    required this.onPressed,
  });
  final String buttontext;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kpadding20,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: kbluecolor),
          child: Text(buttontext)),
    );
  }
}

import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          iconColor: Colors.black,
          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(10)),
          fillColor: Colors.white,
          hintText: label,
          filled: true,
          focusColor: Colors.white),
    );
  }
}

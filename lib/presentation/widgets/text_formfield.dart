import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class KTextFormField extends StatelessWidget {
  const KTextFormField({
    super.key,
    required this.labeltext,
    required this.controller,
    required this.validator,
  });
  final String labeltext;
  final TextEditingController controller;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kpadding8,
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(
              labeltext,
              style: TextStyle(
                  fontSize: 20,
                  color: kdarkbluecolor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
              child: Padding(
            padding: kpadding8,
            child: SizedBox(
              height: 40,
              child: TextFormField(
                validator: validator,
                controller: controller,
                decoration: InputDecoration(
                    fillColor: kgreycolor,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 3))),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

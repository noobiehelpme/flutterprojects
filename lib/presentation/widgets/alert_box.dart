import 'package:flutter/material.dart';
import 'package:gauthentication/core/theme/colors.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget(
      {super.key, required this.dialog, required this.onYes});
  final void Function() onYes;
  final String dialog;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text(
        dialog,
        style: TextStyle(color: kdarkbluecolor, fontWeight: FontWeight.bold),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('No',
                style: TextStyle(
                    color: kdarkbluecolor, fontWeight: FontWeight.bold))),
        TextButton(
            onPressed: onYes,
            child: Text('Yes',
                style: TextStyle(
                    color: kdarkbluecolor, fontWeight: FontWeight.bold)))
      ],
    );
  }
}

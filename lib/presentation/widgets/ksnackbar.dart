import 'package:flutter/material.dart';
import 'package:gauthentication/core/theme/colors.dart';

SnackBar kSnackbar({required String title}) {
  return SnackBar(
    content: Text(title),
    backgroundColor: kdarkbluecolor,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 1),
    margin: const EdgeInsets.all(16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );
}

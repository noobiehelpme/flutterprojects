import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KEmpty extends StatelessWidget {
  const KEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: LottieBuilder.asset('images/no_data.json'),
    );
  }
}

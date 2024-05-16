import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KLoading extends StatelessWidget {
  const KLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: LottieBuilder.asset('images/loading.json'),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        "assets/lottie/magic_wand.json",
        width: 300,
        height: 300,
        fit: BoxFit.contain,
      ),
    );
  }
}

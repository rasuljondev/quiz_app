import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chemistry_through_english/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
      splash: Lottie.asset(
        "assets/chem.json",
      ),
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.scaleTransition,
      splashIconSize: 300,
    );
  }
}

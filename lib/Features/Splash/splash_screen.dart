import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../HomeScreen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void _navigateToNewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ground,
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 50, color: AppColors.white, fontWeight: FontWeight.bold),
          child: AnimatedTextKit(
            onFinished: () {
              _navigateToNewPage(context);
            },
            animatedTexts: [
              WavyAnimatedText('W o j a k e r z'),
            ],
            //pause: Duration(seconds:1 ),
            totalRepeatCount: 1,
            repeatForever: false,
            isRepeatingAnimation: true,
          ),
        ),
      ),
    );
  }
}

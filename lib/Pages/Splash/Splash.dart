import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Screen/Auth/SignIn/SignIn.dart';
import 'package:wojac_app/const/Colors.dart';

class Splash extends StatelessWidget {
  void _navigateToNewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignIn()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: kGround,
        body: Center(
          child: DefaultTextStyle(
           style: TextStyle(fontSize: 50,color: kWhite,fontWeight: FontWeight.bold),
           child: AnimatedTextKit(
             onFinished: () {
               _navigateToNewPage(context);
             },
             animatedTexts: [
               WavyAnimatedText('W o j a k'),
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

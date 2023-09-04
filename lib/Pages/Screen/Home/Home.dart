import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Screen/Details/Details.dart';
import 'package:wojac_app/const/Colors.dart';

import '../HomeScreen/Main-Screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kGround,
         body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (MediaQuery.of(context).size.width >= 640)
              Expanded(child: MainScreen()
              ),



          ],
        ),
      ),
    );
  }
}

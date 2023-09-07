import 'package:flutter/material.dart';

import 'package:wojac_app/Pages/Screen/HomeScreen/HomeScreen.dart';
import 'package:wojac_app/const/Colors.dart';

import '../../navbar/top_bar_contents.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kGround,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              TopBarContents(),
              HomeScreen(),


            ],
          ),
        ),
      ),
    );
  }
}
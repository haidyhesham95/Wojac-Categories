import 'package:flutter/material.dart';


import 'dart:html';

import 'package:wojac_app/Pages/Screen/HomeScreen/Image-tab.dart';
import 'package:wojac_app/Pages/Screen/HomeScreen/Main-Screen.dart';
import 'package:wojac_app/const/Colors.dart';

import 'Pages/Screen/Home/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(kWhite)
            
          
        )

      ),
        debugShowCheckedModeBanner: false,
        home: const Home());
  }
}


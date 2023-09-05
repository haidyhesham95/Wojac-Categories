import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wojac_app/Pages/Screen/Details/Details.dart';


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
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,context2) {
        return MaterialApp(
            theme: ThemeData(
              scaffoldBackgroundColor: kGround,
                scrollbarTheme: ScrollbarThemeData(
                    thumbColor: MaterialStateProperty.all(kWhite)


                ),
              textTheme: GoogleFonts.quicksandTextTheme(
                Theme.of(context).textTheme
              )

            ),

            debugShowCheckedModeBanner: false,
            home: const Home());
      },
    );
  }
}


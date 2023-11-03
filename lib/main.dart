import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wojac_app/Features/Auth/SignIn/signin_screen.dart';
import 'package:wojac_app/utils/app_colors.dart';

import 'Features/account/account_screen.dart';
import 'cubits/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDXC4p5e6bxVgfQ6PyC9ciYwaAxrxZkspo",
          appId: "1:826404721767:web:e39e503a13270a695470c2",
          messagingSenderId: "826404721767",
          projectId: "wojakerz-92207"));
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
      builder: (_, context2) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.ground,
            scrollbarTheme: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all(AppColors.white),
            ),
            textTheme:
                GoogleFonts.quicksandTextTheme(Theme.of(context).textTheme),
          ),
          debugShowCheckedModeBanner: false,
          home: const SigninScreen(),
        );
      },
    );
  }
}

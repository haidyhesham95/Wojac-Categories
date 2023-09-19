import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';

abstract class Styles {
  static const textStyle25 = TextStyle(
    fontSize: 25,
    color: Colors.white,
  );
  static const textStyle18 = TextStyle(color: Colors.white, fontSize: 18);
  static const textStyle15 = TextStyle(
    fontSize: 15,
    color: Colors.white,
  );

  static const textStyle20 = TextStyle(color: Colors.white, fontSize: 20);
  static TextStyle textStyle10 =
      TextStyle(color: Colors.white, fontSize: 6.2.w);
  static TextStyle textStyle12 = TextStyle(
    color: Colors.blue,
    fontSize: 8.w,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle5sp =
      TextStyle(fontSize: 5.sp > 18 ? 5.sp : 18, color: kWhite);
  static TextStyle textStyle10sp = TextStyle(
      fontSize: 10.sp > 30 ? 10.sp : 30,
      fontWeight: FontWeight.bold,
      color: kWhite);
  static TextStyle textStyle315sp = TextStyle(
    color: kWhite,
    fontSize: 15 > 3.sp ? 15 : 3.sp,
  );
  static TextStyle textStyle318sp = TextStyle(
    color: kWhite,
    fontSize: 3.sp > 18 ? 3.sp : 18,
  );

  static TextStyle textStyle4sp =
      TextStyle(fontSize: 4.sp > 20 ? 4.sp : 20, color: kWhite);
  static TextStyle textStyle8sp = TextStyle(
      fontSize: 8.sp > 28 ? 8.sp : 28,
      fontWeight: FontWeight.bold,
      color: kWhite);
  static TextStyle textStyle6sp = TextStyle(
      color: kWhite,
      fontWeight: FontWeight.bold,
     // taha_details_screen
      fontSize: 6.sp > 25 ? 6.sp : 25);
  static TextStyle textStyle3bold = TextStyle(
      color: kWhite,
      fontWeight: FontWeight.bold,
      fontSize: 3.w > 15 ? 3.w : 15);

      // fontSize: 3.w > 15 ? 3.w : 15


  // );




  static TextStyle textStyle75=TextStyle(
      color: kWhite,
      fontWeight: FontWeight.bold,
      fontSize: 5.w > 30 ? 5.w : 30


  );



}

const TextStyle textStyle = TextStyle();

//quick sand font
TextStyle fontStyle({
  Color? color,
  double? fontSize,
  FontWeight? weight,
}) {
  return GoogleFonts.quicksand(
      fontWeight: weight ?? FontWeight.normal,
      fontSize: fontSize ?? 5.sp,
      color: color ?? kWhite);
}

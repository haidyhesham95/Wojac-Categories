import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';


abstract class Styles {
  static const textStyle25 = TextStyle(
    fontSize: 25,
    color: Colors.white,
  );
  static const textStyle18= TextStyle(
  color: Colors.white,
  fontSize: 18
  );
  static const textStyle15 = TextStyle(
    fontSize: 15,
    color: Colors.white,
  );

  static const textStyle20= TextStyle(
      color: Colors.white,
      fontSize: 20
  );
  static TextStyle textStyle10= TextStyle(
      color: Colors.white,
      fontSize: 2.5.sp
  );




}



const TextStyle textStyle = TextStyle();

//quick sand font
TextStyle fontStyle(FontWeight weight) {
  return GoogleFonts.quicksand(
      fontWeight: weight
  );
}
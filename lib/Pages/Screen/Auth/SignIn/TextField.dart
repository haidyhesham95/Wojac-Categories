import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/Colors.dart';

class ConstField extends StatelessWidget {
   ConstField({super.key, required this.hintText,required this.keyboardType, required this.obscureText});
  String? hintText;
   bool obscureText ;
   TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h > 50 ? 48.h : 50,
      width: 120.w > 185 ? 120.w : 185,
      child: TextFormField(
        keyboardType:keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: kWhite,
          focusedBorder: OutlineInputBorder(
            borderRadius:  BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: kgreen,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: kgreen,
                width:1.5,
              )
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(20),
        ),

      ),
    );
  }
}

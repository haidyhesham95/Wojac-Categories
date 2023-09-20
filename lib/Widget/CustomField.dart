import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Styels.dart';

import '../const/Colors.dart';

class CustomField extends StatelessWidget {
   CustomField({super.key, required this.hintText,required this.keyboardType, required this.obscureText, required this.data});
  String? hintText;
   bool obscureText ;
   TextInputType? keyboardType;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
          const EdgeInsets.only(left: 10, bottom: 5),
          child:
          Text(data, style: Styles.textStyle315sp),
        ),
        SizedBox(
          height: 38.h > 50 ? 38.h : 50,
          width: 120.w > 300 ? 120.w : 300,
          child: TextFormField(
            cursorColor: kGround,
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
        ),
      ],
    );
  }
}

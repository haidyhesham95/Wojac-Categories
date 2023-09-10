import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

class Custom_Button extends StatelessWidget {
  const Custom_Button({super.key, required this.data, this.onPressed});
  final String data;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      color: kgreen,
      child:  Container(
        height: 38.h > 50 ? 38.h : 50,
        width: 120.w > 300 ? 120.w : 300,
        child: Center(
          child: Text(
              data,
           style: Styles.textStyle5sp,

          ),
        ),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}

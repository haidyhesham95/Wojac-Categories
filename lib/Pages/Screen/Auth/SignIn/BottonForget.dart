import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonForget extends StatelessWidget {
  const ButtonForget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 85.w),
      child: TextButton(
          onPressed: () {
          },
          child: Text(
            'Forget Password ?',style: TextStyle(fontSize: 3.5.sp,color: Colors.black),

          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Pages/Screen/Auth/Password/forget_password.dart';
import 'package:wojac_app/const/Colors.dart';


class ButtonForget extends StatelessWidget {
  const ButtonForget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder:(context)=> Forget_Password(),
            ),
          );
        },
        child: Text(
          'Forget Password ?',
          style: TextStyle(
              fontSize: 13 > 3.sp ? 13 : 3.sp,
              color: kWhite),

        ));
  }
}

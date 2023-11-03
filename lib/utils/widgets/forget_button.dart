import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Features/auth/Password/forget_password_screen.dart';
import 'package:wojac_app/utils/app_colors.dart';

class ForgetButton extends StatelessWidget {
  const ForgetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ForgetPassword(),
          ),
        );
      },
      child: Text(
        'Forget Password ?',
        style:
            TextStyle(fontSize: 13 > 3.sp ? 13 : 3.sp, color: AppColors.white),
      ),
    );
  }
}

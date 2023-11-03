import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wojac_app/utils/app_colors.dart';

import '../app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.data, this.onPressed});
  final String data;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      color: AppColors.green,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      child: SizedBox(
        height: 38.h > 50 ? 38.h : 50,
        width: 120.w > 300 ? 120.w : 300,
        child: Center(
          child: Text(
            data,
            style: AppStyles.textStyle5sp,
          ),
        ),
      ),
    );
  }
}

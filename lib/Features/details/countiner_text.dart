import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';

import '../../utils/app_styles.dart';

// ignore: must_be_immutable
class TexCoun extends StatelessWidget {
  TexCoun({super.key, required this.data, this.alignment});
  final String data;
  TextAlign? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: context.screenWidth * 0.040,
          minWidth: context.screenWidth * 0.040),
      padding: EdgeInsets.symmetric(
        horizontal: .7.w,
      ),
      height: context.screenHeight * 0.035,
      decoration: BoxDecoration(
        color: AppColors.ground,
        border: Border.all(
          width: 0.5,
          color: AppColors.green,
        ),
      ),
      child: Center(
        child: Text(
          data,
          style: AppStyles.textStyle10,
          textAlign: alignment,
        ),
      ),
    );
  }
}

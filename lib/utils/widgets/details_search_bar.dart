import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';

import '../app_styles.dart';
import '../app_svgs.dart';

class DetailsSearchBar extends StatelessWidget {
  const DetailsSearchBar({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: context.screenWidth * 0.42,
      constraints: BoxConstraints(
        minWidth: context.screenWidth * .42 < 460 ? context.screenWidth * .8 : context.screenWidth * .42,
      ),
      child: TextField(
        style: AppStyles.textStyle318sp
            .copyWith(fontWeight: FontWeight.w600, letterSpacing: 1),
        textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: AppStyles.textStyle318sp
              .copyWith(fontWeight: FontWeight.w600, letterSpacing: 1),
          hintText: 'Search for another design...',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(AppSvgs.search, width: 10.w),
          ),
          filled: true,
          fillColor: AppColors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}

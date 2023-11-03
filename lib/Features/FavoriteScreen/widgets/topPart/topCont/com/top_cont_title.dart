import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_styles.dart';

class TopContTitle extends StatelessWidget {
  final Widget icon;
  final String title;
  const TopContTitle({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.textStyle20
              .copyWith(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10.w),
        icon
      ],
    );
  }
}

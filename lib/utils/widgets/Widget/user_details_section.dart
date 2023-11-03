import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';

import '../../app_styles.dart';
import '../../app_svgs.dart';
import 'custom_details_button.dart';

class UserDetailsSection extends StatelessWidget {
  const UserDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 10.w,
            backgroundColor: AppColors.white,
            backgroundImage: const NetworkImage(
              'https://th.bing.com/th/id/R.5a4b86bf8fa2479b8f29915cb3b523bc?rik=K%2bVs9wkeCN4aEA&pid=ImgRaw&r=0',
            ),
          ),
          SizedBox(width: 4.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ahmed Zon',
                style: AppStyles.textStyle25
                    .copyWith(fontWeight: FontWeight.w600, fontFamily: ''),
              ),
              Text(
                '5K Followers',
                style:
                   AppStyles.textStyle20.copyWith(color: const Color(0xFFD9D9D9)),
              ),
            ],
          ),
          const Spacer(),
          CustomDetailsButton(
            asset: AppSvgs.warning,
            height: 15,
            width: 22,
            onPressed: () {},
            iconColor: const Color(0xFFFFC048),
            textColor: AppColors.litghGreen,
            radius: 15,
            text: 'Follow',
            fontSize: 8.sp,
            iconSize: 8.w,
            custom: true,
          ),
        ],
      ),
    );
  }
}

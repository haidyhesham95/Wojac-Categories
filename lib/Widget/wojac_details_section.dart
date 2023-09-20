import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wojac_app/const/Styels.dart';
import 'package:wojac_app/const/img/img.dart';
import 'package:wojac_app/const/svgs.dart';
import '../const/Colors.dart';
import 'custom_details_button.dart';
import 'user_details_section.dart';

class WojacDetailsSection extends StatelessWidget {
  const WojacDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .6,
      width: size.width * .8,
      decoration: BoxDecoration(
        border: Border.all(color: kgreen),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'First Design',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: '',
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '#ahmed #zon',
                    style: Styles.textStyle12.copyWith(
                      fontFamily: '',
                    ),
                  ),
                  SizedBox(width: 16.w),
                  SvgPicture.asset(
                    AppSvgs.favorite,
                    width: 20.w,
                    height: 28.h,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '400',
                    style: Styles.textStyle12.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 28.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: WrapCrossAlignment.center,
            // direction: Axis.horizontal,
            children: [
              CustomDetailsButton(
                onPressed: () {},
                asset: AppSvgs.download,
                width: 60.w,
                height: 85.h,
                text: 'PNG',
              ),
              SizedBox(width: 5.w),
              CustomDetailsButton(
                onPressed: () {},
                asset: AppSvgs.favorite,
                width: 55.w,
                height: 85.h,
                text: 'favorite',
                iconSize: 12.w,
              ),
            ],
          ),
          const Spacer(),
          const UserDetailsSection(),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}

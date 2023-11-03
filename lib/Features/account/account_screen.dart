import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:wojac_app/Features/account/widget/border_count_account.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_fonts.dart';
import '../../utils/app_images.dart';
import 'widget/top_list_account.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Wrap(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
                child: Container(
                  height: context.screenWidth < 920 ? 400 : 390.h,
                  width: context.screenWidth < 920 ? double.infinity : 200.w,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    AppImages.img2,
                  ),
                ),
              ),
              Padding(
                padding: context.screenWidth < 920
                    ? EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h)
                    : EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.h),
                child: SizedBox(
                  width: context.screenWidth < 920
                      ? double.infinity
                      : context.screenWidth - 208.w,
                  height: context.screenWidth < 920 ? null : 390.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: context.screenWidth < 920
                        ? MainAxisSize.min
                        : MainAxisSize.max,
                    children: [
                      if (context.screenWidth > 920)
                        Text(
                          "Ahmedzon",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 40 > 12.sp ? 40 : 12.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppFonts.quicksand,
                              color: Colors.white),
                        ),
                      if (context.screenWidth > 920)
                        SizedBox(
                          height: 1.h,
                        ),
                      if (context.screenWidth > 920) trophies(false),
                      if (context.screenWidth > 920)
                        SizedBox(
                          height: 5.h,
                        ),
                      if (context.screenWidth > 920) imageAndheart(),
                      if (context.screenWidth > 920)
                        SizedBox(
                          height: 5.h,
                        ),
                      BorderCountAccount(
                        width:
                            context.screenWidth < 920 ? double.infinity : 150.w,
                        borderWidth: context.screenWidth > 920 ? null : 0,
                        borderColor: context.screenWidth > 920
                            ? null
                            : Colors.transparent,
                      ),
                      if (context.screenWidth < 920)
                        Padding(
                          padding: EdgeInsets.only(left: 2.w, right: 2.w),
                          child: Row(
                            children: [
                              trophies(true),
                              const Spacer(),
                              imageAndheart(),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.screenWidth > 920 ? 5.h : 0,
            ),
            child: SizedBox(
              width: context.screenWidth,
              child: Column(
                children: [
                  Wrap(
                    spacing: 15.w,
                    runSpacing: 3.5.h > 10 ? 3.5.h : 10,
                    children: List.generate(
                      6,
                      (index) => const TopListAccount(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget trophies(bool vertical) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 1.w,
      children: [
        SizedBox(
          width: 45 > 10.w
              ? vertical
                  ? 35
                  : 45
              : 10.w,
          height: 40.h,
          child: Image.asset(
            AppImages.trophy,
          ),
        ),
        SizedBox(
          width: 45 > 10.w
              ? vertical
                  ? 35
                  : 45
              : 10.w,
          height: 40.h,
          child: Image.asset(
            AppImages.trophy,
          ),
        ),
      ],
    );
  }

  Widget imageAndheart() {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      spacing: 2.w,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              IconlyLight.image,
              color: Colors.white,
              size: 10.w > 30 ? 10.w : 30,
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "200",
              style: TextStyle(
                  fontSize: 8.sp > 20 ? 8.sp : 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppFonts.quicksand,
                  color: Colors.white),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              IconlyLight.heart,
              color: Colors.white,
              size: 10.w > 30 ? 10.w : 30,
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "400",
              style: TextStyle(
                  fontSize: 8.sp > 20 ? 8.sp : 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppFonts.quicksand,
                  color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}

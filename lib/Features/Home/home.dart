import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Features/top_screen/Top_Screen.dart';

import '../../utils/app_colors.dart';
import '../../utils/widgets/ad_widegt.dart';
import '../navbar/top_bar_contents.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ground,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const TopBarContents(),
              //ad
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      adsenseAdsView(context),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              //current screen
              const TopScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

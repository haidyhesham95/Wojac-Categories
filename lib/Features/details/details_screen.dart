import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';
import 'package:wojac_app/utils/widgets/wojak_item.dart';
import '../../utils/widgets/Widget/wojac_details_section.dart';

import '../../utils/widgets/details_search_bar.dart';
import '../../utils/widgets/wojac_details_image.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: Container(
        color: AppColors.ground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 4.w),
                child: Wrap(
                  spacing: 12,
                  runSpacing: 3.5.h > 10 ? 3.5.h : 10,
                  alignment: WrapAlignment.center,
                  children: [
                    SizedBox(
                        height: context.screenHeight * 0.8,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            WojacDetailsImage(),
                          ],
                        )),
                    // Text(
                    //   'width: ${context.screenWidth}',
                    //   style: Styles.textStyle25,
                    // ),
                    // Text(
                    //   'height: ${context.screenHeight}',
                    //   style: Styles.textStyle25,
                    // ),
                    Container(
                      height: context.screenHeight * 0.8,
                      width: context.screenWidth * .42,
                      constraints: BoxConstraints(
                        minWidth: context.screenWidth * .42 < 460
                            ? context.screenWidth * .8
                            : context.screenWidth * .42,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 45.h),
                          DetailsSearchBar(controller: searchController),
                          SizedBox(height: 35.h),
                          const WojacDetailsSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: context.screenWidth,
                child: Column(
                  children: [
                    Wrap(
                      spacing: 10.w,
                      runSpacing: 3.5.h > 10 ? 3.5.h : 10,
                      children: List.generate(5, (index) => const WojakItem()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

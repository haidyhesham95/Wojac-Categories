import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Widget/item.dart';
import 'package:wojac_app/const/Colors.dart';
import '../../../Widget/details_search_bar.dart';
import '../../../Widget/details_wojac_widget.dart';
import '../../../Widget/wojac_details_image.dart';
import '../../../Widget/wojac_details_section.dart';
import '../../../const/Styels.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: Container(
        color: kGround,
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
                        height: size.height * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            WojacDetailsImage(size: size),
                          ],
                        )
                    ),
                    // Text(
                    //   'width: ${size.width}',
                    //   style: Styles.textStyle25,
                    // ),
                    // Text(
                    //   'height: ${size.height}',
                    //   style: Styles.textStyle25,
                    // ),
                    Container(
                      height: size.height * 0.8,
                      width: size.width * .42,
                      constraints: BoxConstraints(
                        minWidth: size.width * .42 < 460
                            ? size.width * .8
                            : size.width * .42,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 45.h),
                          DetailsSearchBar(
                              controller: searchController, size: size),
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
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    Wrap(
                      spacing: 10.w,
                      runSpacing: 3.5.h > 10? 3.5.h : 10,
                      children: List.generate(
                        5,
                        (index) => wojakItem(size: size),
                      ),
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

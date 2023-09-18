import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../const/Colors.dart';
import '../const/Styels.dart';
import '../const/svgs.dart';

class DetailsSearchBar extends StatelessWidget {
  const DetailsSearchBar(
      {super.key, required this.controller, required this.size});
  final TextEditingController controller;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: size.width * 0.42,
      constraints: BoxConstraints(
        minWidth: size.width * .42 < 460 ? size.width * .8 : size.width * .42,
      ),
      child: TextField(
        style: Styles.textStyle318sp
            .copyWith(fontWeight: FontWeight.w600, letterSpacing: 1),
        textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: Styles.textStyle318sp
              .copyWith(fontWeight: FontWeight.w600, letterSpacing: 1),
          hintText: 'Search for another design...',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(AppSvgs.search, width: 10.w),
          ),
          filled: true,
          fillColor: kGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}

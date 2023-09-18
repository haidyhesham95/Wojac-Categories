import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const/Colors.dart';

class CustomDetailsButton extends StatelessWidget {
  const CustomDetailsButton({
    super.key,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.text,
    required this.asset,
    this.borderSide,
    this.iconColor,
    this.textColor,
    this.fontSize,
    this.iconSize,
    this.radius,
    this.custom,
  });
  final double height, width;
  final double? fontSize, radius, iconSize;
  final String text, asset;
  final BorderSide? borderSide;
  final GestureTapCallback onPressed;
  final Color? iconColor, textColor;
  final bool? custom;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 8),
            side: const BorderSide(color: kLitghGreen),
          ),
          color: custom == null ? kLitghGreen : Colors.black,
          minWidth: width,
          height: height,
          child: Padding(
            padding: EdgeInsets.all(2.w),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize ?? 12.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: custom == null ? '' : null,
                      letterSpacing: 3,
                      color: textColor ?? kWhite,
                    ),
                  ),
                  custom != null
                      ? const VerticalDivider(
                          color: Colors.white,
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                        )
                      : const SizedBox(),
                  SvgPicture.asset(
                    asset,
                    color: iconColor ?? Colors.white,
                    width: iconSize ?? 15.w,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

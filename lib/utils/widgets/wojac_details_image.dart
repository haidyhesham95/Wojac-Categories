import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WojacDetailsImage extends StatelessWidget {
  const WojacDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450 > 150.w ? 400 : 500.h,
      width: 450 > 150.w ? 450 : 150.w,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset('assets/images/img.png', fit: BoxFit.contain),
    );
  }
}

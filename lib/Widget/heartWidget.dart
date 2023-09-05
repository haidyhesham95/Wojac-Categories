import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
import 'package:wojac_app/const/Colors.dart';



class HeartWidget extends StatelessWidget {
  const HeartWidget({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 25.h,
      width: 7.w,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(8),
       color:kWhite.withOpacity(.8),

     ),
      child: Align(
        alignment: Alignment.center,
        child: LikeButton(
         size: 5.w,
         likeCountAnimationDuration: Duration(
           microseconds: 500
          ),

        ),
      ),
    );
  }
}

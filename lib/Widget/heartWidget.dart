import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      child: IconButton(
        style: IconButton.styleFrom(
          shape: const CircleBorder(),

        ),
        onPressed: (){

        },
        icon: Icon(
          Icons.favorite,
          color:Colors.red,
          size: 3.7.w,
        ),),
    );
  }
}

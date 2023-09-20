import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive/rive.dart';
import 'package:wojac_app/const/Colors.dart';

import '../const/Styels.dart';


class Animation_Text extends StatelessWidget {
   Animation_Text({super.key, required this.text, required this.asset});
   final String text;
   final String asset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: 5.w
      ),
      child: SizedBox(
        height: 80.h,
        child: Row(
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(
          height: 60.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  text,
                  style: Styles.textStyle6sp
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:30,left: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              RiveAnimation.asset(
                asset,
                useArtboardSize: true,


              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}


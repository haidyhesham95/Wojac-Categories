import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/Styels.dart';

class Custom_CoulmnT extends StatelessWidget {
   Custom_CoulmnT({super.key, required this.text1, required this.text2});
final String text1;
final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: Styles.textStyle8sp,
        ),

        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text2,
              style: Styles.textStyle318sp,
            ),
            SizedBox(
              width: 3.w,
            ),
            Image.asset(
              'assets/images/star.png',
              width: 5.w > 25 ? 5.w : 25,
              height: 15.h > 25 ? 0.h : 25,
            )
          ],
        ),
      ],
    );
  }
}

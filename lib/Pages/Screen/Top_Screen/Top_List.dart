import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../Widget/Container_img_list.dart';
import '../../../Widget/heartWidget.dart';
import '../../../const/Colors.dart';
import '../../../const/Styels.dart';

Widget TopList({required Size size}) {
  return Container(
    width: 75.w > 400 ? 75.w : 400,
    height: 212.h > 300 ? 212.h : 300,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: kGround.withOpacity(.7), width: 0.45.w))),
          child: Img_List(assetName: 'assets/images/maxresdefault (93).jpg'),
        ),
        Container(
          height: 50.h > 60 ? 50.h : 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),

          child: Padding(
            padding: EdgeInsets.only(left: 8,right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'the first wojak title sjdhs jkashkdhkjsahd ',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(IconlyLight.image),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text('10'),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(IconlyLight.heart),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text('20'),
                    Spacer(),
                    Container(
                      height: 20.h,
                      width: 30.w > 130 ? 30.w : 130,
                      decoration: BoxDecoration(
                          color: kGround,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Follow', style: Styles.textStyle3bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

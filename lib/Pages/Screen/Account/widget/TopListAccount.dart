import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:wojac_app/const/Fonts.dart';

import '../../../../Widget/Container_img_list.dart';
import '../../../../const/Colors.dart';
import '../../../../const/Styels.dart';



Widget TopListAccount({required Size size}) {
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
          child: Img_List(assetName: 'assets/images/wojacUp.jpg'),
        ),
        Container(
          height: 30.h > 40 ? 30.h : 40,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),

          child: Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(),
                    const Text(
                      'the first wojak title sjdhs jkashkdhkjsahd ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: Font.quicksand,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(width: 1.w,),
                    const Icon(IconlyLight.heart),
                    SizedBox(
                      width: 1.w,
                    ),
                    const Text('20',style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: Font.quicksand,
                      fontSize: 15,
                    ),),
                    const Spacer(),

                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:wojac_app/Pages/Screen/Account/widget/BorderCountAccount.dart';
import 'package:wojac_app/Pages/Screen/account/widget/image.dart';

import '../../../const/Colors.dart';
import '../../../const/Fonts.dart';
import '../../../const/Styels.dart';
import '../../../const/img/img.dart';
import '../Details/Countiner-Border.dart';
import '../Details/wojac_details_image.dart';
import '../Top_Screen/Top_List.dart';
import '../Top_Screen/Top_Screen.dart';
import 'widget/TopListAccount.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Wrap(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 5.h

                ),
                child: Container(
                  height: MediaQuery.sizeOf(context).width < 920 ? 400 : 390.h,
                  width: MediaQuery.sizeOf(context).width < 920 ? double.infinity : 200.w,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    img.img2,
                  ),
                ),
              ),
              Padding(
                padding: MediaQuery.sizeOf(context).width < 920 ?
                EdgeInsets.symmetric(
                    horizontal: 3.w,
                    vertical: 5.h
                )
                    :
                EdgeInsets.symmetric(
                    horizontal: 0.0,
                    vertical: 5.h
                ),
                child: Container (
                  width: MediaQuery.sizeOf(context).width < 920 ? double.infinity : MediaQuery.sizeOf(context).width -  208.w ,
                  height: MediaQuery.sizeOf(context).width < 920 ? null : 390.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MediaQuery.sizeOf(context).width < 920 ? MainAxisSize.min : MainAxisSize.max,
                    children: [
                     if( MediaQuery.sizeOf(context).width > 920 )
                      Text(
                        "Ahmedzon",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 40 > 12.sp ? 40 : 12.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: Font.quicksand,
                            color: Colors.white
                        ),
                      ),
                      if( MediaQuery.sizeOf(context).width > 920 )
                      SizedBox(
                        height:1.h,
                      ),
                      if( MediaQuery.sizeOf(context).width > 920 )
                        trophies(false),
                      if( MediaQuery.sizeOf(context).width > 920 )
                        SizedBox(
                          height:5.h,
                        ),
                      if( MediaQuery.sizeOf(context).width > 920 )
                      imageAndheart(),
                      if( MediaQuery.sizeOf(context).width > 920 )
                      SizedBox(
                        height:5.h,
                      ),
                      BorderCountAccount(
                        width: MediaQuery.sizeOf(context).width < 920 ? double.infinity : 150.w,
                        borderWidth: MediaQuery.sizeOf(context).width > 920 ? null : 0,
                        borderColor: MediaQuery.sizeOf(context).width > 920 ? null : Colors.transparent,

                      ),
                      if( MediaQuery.sizeOf(context).width < 920 )
                        Padding(
                          padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                          child: Row(
                            children: [
                              trophies(true),
                              Spacer(),
                              imageAndheart(),
                            ],
                          ),
                        ),



                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).width > 920 ? 5.h : 0
            ),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  Wrap(
                    spacing: 15.w,
                    runSpacing: 3.5.h > 10 ? 3.5.h : 10,
                    children:
                        List.generate(6, (index) => TopListAccount(size: size)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget trophies(bool vertical) {
    return  Wrap(
      alignment: WrapAlignment.start,
      spacing: 1.w,
      children: [
        Container(
          width: 45 > 10.w ? vertical? 35 : 45 : 10.w,
          height: 40.h,
          child: Image.asset(
            img.trophy,
          ),
        ),
        Container(
          width: 45 > 10.w ? vertical? 35 : 45 : 10.w,
          height: 40.h,
          child: Image.asset(
            img.trophy,
          ),
        ),
      ],
    );
  }
  Widget imageAndheart () {
    return  Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      spacing: 2.w,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              IconlyLight.image,
              color: Colors.white,
              size: 10.w > 30 ? 10.w : 30,
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "200",
              style: TextStyle(
                  fontSize: 8.sp > 20 ? 8.sp : 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: Font.quicksand,
                  color: Colors.white),
            ),
          ],

        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              IconlyLight.heart,
              color: Colors.white,
              size: 10.w > 30 ? 10.w : 30,
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "400",
              style: TextStyle(
                  fontSize: 8.sp > 20 ? 8.sp : 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: Font.quicksand,
                  color: Colors.white),
            )
          ],

        ),
      ],
    );
  }
}

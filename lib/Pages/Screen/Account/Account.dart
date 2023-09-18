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
import '../Details/Countiner-image.dart';
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin:  EdgeInsetsDirectional.only(start: 15, top: 30.h),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageAccount(
                      height: 0.55,
                      width: 0.55,
                      ImageImage: img.img2,
                      colorAccount: kWhite,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only( start: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Ahmedzon",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.quicksand,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: 100.sp,
                            height: 90.h,
                            child: Row(
                              children: [
                                Image.asset(
                                  img.encrypted,
                                  width: 25.w,
                                  height: 90.h,
                                  fit: BoxFit.cover,
                                ),
                                Spacer(),

                                Image.asset(
                                  img.trophy,
                                  width: 23.w,
                                  height: 75.h,
                                  fit: BoxFit.cover,
                                ),
                                Spacer(),
                                Image.asset(
                                  img.trophy2,
                                  width: 15.w,
                                  height: 75.h,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                IconlyLight.image,
                                color: Colors.white,
                                size: 18.5.sp,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "200",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: Font.quicksand,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              Icon(
                                IconlyLight.heart,
                                color: Colors.white,
                                size: 18.5.sp,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "400",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: Font.quicksand,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          const BorderCountAccount(),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
          SizedBox(
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
        ],
      ),
    );
  }
}

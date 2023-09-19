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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(start: 15, top: 30.h),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      height: 110.sp<223?300:110.sp,
                      width: 200.w<388?700:200.w,
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        img.img2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ahmedzon",
                            style: TextStyle(
                                fontSize: 18.sp<35?60:18.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.quicksand,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height:8.sp<12?5:8.sp,
                          ),
                          Wrap(
                            alignment: WrapAlignment.start,
                              children: [
                                Image.asset(
                                  img.trophy,
                                  width:16.w<40?70:16.w,
                                  height: 80.h<107?80:80.h,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 3.w,),
                                Image.asset(
                                  img.trophy,
                                  width:16.w<40?70:16.w,
                                  height: 80.h<107?80:80.h,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          SizedBox(
                            height:8.sp<12?7:8.sp,
                          ),
                          Wrap(
                            alignment: WrapAlignment.start,
                            direction: Axis.horizontal,
                            children: [
                              Icon(
                                IconlyLight.image,
                                color: Colors.white,
                                size: 18.5.sp<30?50:18.sp,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "200",
                                style: TextStyle(
                                    fontSize: 15.5.sp<25?35:15.5.sp,
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
                                size: 18.5.sp<30?50:18.sp,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "400",
                                style: TextStyle(
                                    fontSize: 15.5.sp<25?35:15.5.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: Font.quicksand,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height:8.sp<12?5:8.sp,
                          ),
                          const BorderCountAccount(),
                            MaterialButton(onPressed: (){
                              print(18.5.sp);
                            })
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp<30?0:20.sp,
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

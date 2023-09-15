import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
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
                margin: const EdgeInsetsDirectional.only(start: 33,top: 30),
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
                      const EdgeInsetsDirectional.only(top: 15, start: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Text(
                            "Ahmedzon",
                            style: TextStyle(
                                fontSize: 75,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.quicksand,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                              children: [
                                Image.asset(img.encrypted),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(img.trophy),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(img.trophy2),
                              ],
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                IconlyLight.image,
                                color: Colors.white,
                                size: 50.5,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              const Text(
                                "200",
                                style: TextStyle(
                                    fontSize: 40,
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
                              const Icon(
                                IconlyLight.heart,
                                color: Colors.white,
                                size: 50.5,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              const Text(
                                "400",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: Font.quicksand,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          const BorderCount(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
               SizedBox(height: 50.h,),

            ],
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                Wrap(
                  spacing: 15.w,
                  runSpacing: 3.5.h > 10? 3.5.h : 10,
                  children: List.generate(6, (index) => TopListAccount(size: size)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
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
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(7.w),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
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
                          children: [
                            Container(
                                child: const Text(
                                  "Ahmedzon",
                                  style: TextStyle(
                                      fontSize: 75,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: Font.quicksand,
                                      color: Colors.white),
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ImageAccount(
                                  height: 0.080,
                                  width: 0.080,
                                  ImageImage: img.encrypted,
                                  colorAccount: kGround,
                                ),
                                ImageAccount(
                                  height: 0.080,
                                  width: 0.080,
                                  ImageImage: img.reward,
                                  colorAccount: kGround,
                                ),
                                ImageAccount(
                                  height: 0.080,
                                  width: 0.080,
                                  ImageImage: img.trophy2,
                                  colorAccount: kGround,
                                ),
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
                            BorderCount(),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50,),

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
        ),
      ),
    );
  }
}

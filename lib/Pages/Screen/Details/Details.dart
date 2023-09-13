import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Pages/Screen/Details/Button.dart';
import '../HomeScreen/ListWojakFavourit.dart';
import 'Countiner-Border.dart';
import 'Countiner-image.dart';
import 'Countiner-text.dart';
import '../../../const/Colors.dart';
import '../HomeScreen/Search/TextSearch.dart';
import 'NewList.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: kGround,

        child: Padding(
          padding:  EdgeInsets.all(12.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(
                              left: 15.w,
                              top: 100.h
                          ),
                          child: ImgCount(),
                        ),
                        SizedBox(height: 8.h,),
                      ],
                    ),
                     SizedBox(
                       width: 12.w,
                     ),
                    Column(
                      children: [
                        SizedBox(
                          height: size.height*0.12,
                            width: size.width*0.50,
                            child: const TextSearch(),
                        ),
                      Container(
                        height: size.height*0.50,
                        width: size.width*0.50,
                         decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: kgreen,
                            )
                        ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Title and tags
                          SizedBox(
                            height: 40.h
                            ,),
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 200),
                            child: Row(
                              children: [
                                Button(data: 'Favorite',icon: Icons.favorite,onPressed: (){},),
                                SizedBox(width: 5.w,),
                                Button(data: 'PNG',icon: Icons.arrow_circle_down,onPressed: (){},),
                              ],
                            ),
                          ),
                          SizedBox(height: 50,),

                          BorderCount()
                        ],
                      ),
                    )
                      ],
                    ),
                  ],
            ),
                SizedBox(
                  height: 70.h,
                ),

      ]
      ),
          ),
        )
      ),
    );
  }
}

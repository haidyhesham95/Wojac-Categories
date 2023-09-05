import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Widget/item.dart';
import 'dart:html';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

import '../Details/Details.dart';
import 'ListCard.dart';
import 'ListWojakFavourit.dart';
import 'Search/TextSearch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return

       Container(
        padding: const EdgeInsets.all(20),
        color: kGround,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,),
            Text(
              'Wojak Categories',
             style: fontStyle(
               weight: FontWeight.bold,
                 fontSize: 4.sp

             ),
            ),
            SizedBox(
              height: 15.h,),
            ListCard(),
            SizedBox(
              height: 15.h,),
            Row(
              children: [
                Text(
                  'Latest Wojaks ',
                  style: fontStyle(
                      weight:FontWeight.bold,
                    fontSize: 4.sp
                  ),
                ),
             Container(
               height: 24.h,
               width: 32.w,
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Image(
                       image:
                       AssetImage(
                           'assets/images/fire.png'
                       ),
                   ),
                 ],
               ),
             ),


              ],
            ),
            SizedBox(
              height: 20.h
              ,),
           Wrap(
             spacing: 10.w,
             runSpacing: 30.h,
             children: List.generate(6, (index) => wojakItem(size: size)),
           ),

          ],
        ),

    );

  }
}

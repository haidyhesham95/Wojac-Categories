import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive/rive.dart';
import 'package:wojac_app/Widget/item.dart';
import 'dart:html';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';
import 'package:wojac_app/cubits/home_cubit/home_cubit.dart';
import 'package:wojac_app/cubits/home_cubit/home_states.dart';

import '../Details/Details.dart';
import 'ListCard.dart';
import 'ListWojakFavourit.dart';
import 'Search/TextSearch.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context)=> HomeCubit() ,
      child: BlocConsumer< HomeCubit , HomeStates > (
        builder: (context,state) {
          return ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
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
                    //list Card

                    Padding(
                      padding:  EdgeInsets.symmetric(
                          horizontal: 5.w
                      ),
                      child: Container(
                        height: 60.h,
                        child: Row(

                          children: [
                            Container(
                              height: 60.h,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(

                                    'Latest Wojaks ',

                                    style: fontStyle(
                                        weight:FontWeight.bold,
                                        fontSize: 6.sp > 30 ? 6.sp : 30
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RiveAnimation.asset(
                                  'assets/images/4407-9024-fire-loop.riv',
                                  useArtboardSize: true,




                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h
                      ,),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        children: [
                          Wrap(
                            spacing: 15.w,
                            runSpacing: 3.5.h > 10? 3.5.h : 10,
                            children: List.generate(6, (index) => wojakItem(size: size)),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

              ),
            ],
          );
        },
       listener: (context,state) {},
      ),
    );


  }



}

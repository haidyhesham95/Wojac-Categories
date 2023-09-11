import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Widget/item.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';
import 'package:wojac_app/cubits/home_cubit/home_cubit.dart';
import 'package:wojac_app/cubits/home_cubit/home_states.dart';
import '../../../Widget/Animation+Text.dart';
import 'ListCard.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context)=> HomeCubit() ,
      child: BlocConsumer< HomeCubit , HomeStates > (
        builder: (context,state) {
          return ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: kGround,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   const SizedBox(
                      height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Wojak Categories',
                        style: Styles.textStyle6sp
                      ),
                    ),
                    SizedBox(
                      height: 15.h,),
                    ListCard(),

                     Animation_Text(
                       text: 'Latest Wojaks',
                       asset: 'assets/images/4407-9024-fire-loop.riv',
                     ),
                    SizedBox(
                      height: 15.h
                      ,),
                    SizedBox(
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

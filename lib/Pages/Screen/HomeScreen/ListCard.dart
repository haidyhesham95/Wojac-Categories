import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';
import '../Details/Details.dart';

class ListCard extends StatelessWidget {
   ListCard({super.key});
  final yourScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.26,
      child: RawScrollbar(
        thumbColor: kWhite,
        trackVisibility: true,
        controller: yourScrollController,
        thickness: 8,

        radius: Radius.circular(20),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          itemCount: 10,
            controller: yourScrollController,
            itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.only(left: 5.w,),
              child: Column(
                children: [
                  Container(
                      height: size.height*0.21,
                      width: size.width*0.12,
                      decoration: BoxDecoration(
                          color: kGround,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )
                      ),

                      child: Image.asset('assets/images/img (1).png',)),
                  Container(
                    width:size.width*0.12,
                    height: 20.h,
                    decoration: const BoxDecoration(
                      color: kWhite,
                  borderRadius:BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)
                  )
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Wojak',
                          textAlign: TextAlign.center,
                          style: fontStyle(FontWeight.w900),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            );

            }
        ),
      ),
    );
  }
}

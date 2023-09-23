import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/Colors.dart';
import '../../../../const/Styels.dart';
import '../../../../const/img/img.dart';

class BorderCountAccount extends StatelessWidget {

   BorderCountAccount({
     this.width,
     this.borderColor,
     this.borderWidth

   });

   double? width ;
   double? borderWidth ;
   Color? borderColor;

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Container(
      height: 70 > size.height*0.10 ? 70 : size.height*0.10,
      width: width == null ? 100.w < 256 ? 350:100.w : width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kGround,
          border: Border.all(
            width: borderWidth?? 0.7,
            color: borderColor?? kWhite,
          )
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 2.w,right: 2.w),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 30 > 6.w ? 30 : 6.w ,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(
                      horizontal: 2.w
                  ),
                  child:  Text(
                    'Ahmed Zone',
                    style: TextStyle(
                        fontSize: 5.sp < 20 ? 20 : 5.sp,
                        fontWeight: FontWeight.w800,color: Colors.white),),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(
                      horizontal: 2.w
                  ),
                  child:  Text(
                    '20K followers',
                    style: TextStyle(
                        fontSize: 3.sp < 14 ? 14 : 3.sp,
                        color: Colors.white.withOpacity(.5)),),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding:  EdgeInsets.only(right: 2.5.w),
              child: Container(
                height: size.height*0.045 > 40 ? size.height*0.045 : 40 ,
                width: 120 > 30.w ? 120 : 30.w,
                child: TextButton(
                    onPressed: (){

                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kgreen,
                    ),
                    child:   Text(
                      'Follow',
                      style: TextStyle(
                          fontSize: 18 > 5.sp ? 18 : 5.sp ,
                          color: Colors.white
                      ),

                    )
                ),

              ),
            ),
            InkWell(

                onTap:(){},
                child: Image.asset(
                    img.warning,
                    height: 25.h > 100 ? 25.h : 100,
                    width: 10.w > 30 ? 10.w : 30
                )),

          ],
        ),
      ),


    );
  }
}

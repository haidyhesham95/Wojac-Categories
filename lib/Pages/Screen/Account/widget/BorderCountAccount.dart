import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/Colors.dart';
import '../../../../const/Styels.dart';
import '../../../../const/img/img.dart';

class BorderCountAccount extends StatelessWidget {
  const BorderCountAccount({super.key});

  @override
  Widget build(BuildContext context) {
     var size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.10,
      width:100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kGround,
          border: Border.all(
            width: 0.7,
            color: kWhite,
          )
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 2.w,right: 2.w),
        child: Row(

          children: [

            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 7.sp,
            ),

            Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: 2.w
              ),
              child:  Text('Ahmed Zone',style: TextStyle(fontSize: 5.sp,fontWeight: FontWeight.w800,color: Colors.white),),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: size.height*0.045,
                width: size.width*0.065,
                child: TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      backgroundColor: kgreen,
                    ),
                    child:   Text(
                      'Follow',style: TextStyle(fontSize: 5.sp,color: Colors.white),

                    )
                ),

              ),
            ),
            Image.asset(img.warning,height: 10.sp,width: 10.sp,),

          ],
        ),
      ),


    );
  }
}

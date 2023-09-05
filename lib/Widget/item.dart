import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/Colors.dart';
import '../const/Styels.dart';
import 'heartWidget.dart';

Widget wojakItem (
{
  required Size size
}
    ) {
  return  Padding(
    padding: EdgeInsets.only(left: 3.w,),
    child: Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    )
                  ),
                  child: AspectRatio(

                    aspectRatio: 16/9,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/maxresdefault (93).jpg'),
                          fit: BoxFit.cover
                        )
                      ),

                    ),
                  )),
              Positioned(
                top: 6,
                right: 9,
                child: HeartWidget(),
              ),

            ],
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            height: 30.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15)
          )
        ),
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      radius: 12.r,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(

                      constraints: BoxConstraints(
                          maxWidth: size.width*0.20 - ( 12.r * 2  + 45.w )
                      ),
                      child: Text(
                        'Wojak',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Container(
                  height:20.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: kGround,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                      onPressed: () { },
                      child: Text(
                        'Follow',
                        style: Styles.textStyle10,
                      )),
                ),

              ],
            ),
          ),
        ],


      ),
    ),
  );
}


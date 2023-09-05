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
  return  Container(
    height: 210.h,
    width: 75.w,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),

    ),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: kGround.withOpacity(.7),
                width: 0.45.w
              )
            )
          ),
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),

                    )
                  ),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.5),
                        image: DecorationImage(
                          image: AssetImage('assets/images/maxresdefault (93).jpg'),

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
        ),
        Container(
          height: 40.h,
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
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      vertical: 4.h
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: 34.w
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'the first wojak title sjdhs jkashkdhkjsahd ',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,

                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Wojak',
                            style: TextStyle(


                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
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
  );
}


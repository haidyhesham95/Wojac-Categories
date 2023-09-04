import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';
import 'dart:ui_web';
import '../../../Widget/heartWidget.dart';
import '../../../const/Styels.dart';
import '../Details/Details.dart';

class ListWojacFav extends StatelessWidget {
   ListWojacFav({super.key});
  final yourScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Details(

              )),
        );
      },
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            crossAxisSpacing: 20,
            childAspectRatio: 3/2,
            mainAxisSpacing: 30,
          ),
       // controller:yourScrollController,
        itemBuilder: (context,index){
          return  Padding(
            padding: const EdgeInsets.only(left: 22,),
            child: Container(
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Container(
                            height: size.height*0.20,
                            width: size.width*0.20,
                            decoration: BoxDecoration(
                                color: kGround,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                            child:AspectRatio(
                              aspectRatio: 8,
                              child: Image.asset(
                                'assets/images/img (1).png',

                              ),
                            )),

                        Positioned(
                          top: 6,
                          right: 9,
                          child: HeartWidget(),
                        ),

                      ],),
                  ),
                  SizedBox(height: 14,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/profile.png'),
                            radius: 12.r,
                          ),
                          SizedBox(width: 2.w,),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: size.width*0.20 - ( 12.r * 2  + 45.w )
                            ),
                            child: Text(
                              'Wojak'*12,
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
                            child: Text('Follow',
                              style: Styles.textStyle10,)),
                      ),

                    ],
                  ),
                ],


              ),
            ),
          );
        }


      ),
    );
  }
}


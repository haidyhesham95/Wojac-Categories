import 'package:flutter/material.dart';
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
        itemCount: 8,
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
                            radius: 13,
                          ),
                          SizedBox(width: 8,),
                          Text('Wojak'),
                        ],
                      ),
                      Container(
                        height:18,
                        width: 80,
                        decoration: BoxDecoration(
                            color: kGround,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextButton(
                            onPressed: () { },
                            child: Text('Follow',style: Styles.textStyle10,)),
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


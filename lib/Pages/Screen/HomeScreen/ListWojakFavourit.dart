import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';

import '../../../Widget/heartWidget.dart';
import '../../../const/Styels.dart';

class ListWojacFav extends StatelessWidget {
  const ListWojacFav({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          crossAxisSpacing: 20,
          childAspectRatio: 3/2,
          mainAxisSpacing: 30,
        ),
      itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.only(left: 22,),
          child: Container(
            decoration: BoxDecoration(
              color: kColor,
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
                          child: Image.asset(
                            'assets/images/img (1).png',

                          )),

                      Positioned(
                        top: 5,
                        right: 5,
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


    );
  }
}


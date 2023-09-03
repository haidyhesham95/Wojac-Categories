import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';

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
              padding: const EdgeInsets.only(left: 22,),
              child: Container(
                height: size.height*0.24,
                width: size.width*0.12,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(15),
                ),

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
                    SizedBox(height: 10,),
                    Text('Wojak'),
                  ],
                ),
              ),
            );

            }
        ),
      ),
    );
  }
}

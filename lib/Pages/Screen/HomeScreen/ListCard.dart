import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';

import '../Details/Details.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: size.height*0.26,

        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(

                  )),
            );
          },
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            itemCount: 5,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(left: 10,),
                child: Container(
                  height: size.height*0.25,
                  width: size.width*0.12,
                  decoration: BoxDecoration(
                    color: kColor,
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
      ),
    );
  }
}

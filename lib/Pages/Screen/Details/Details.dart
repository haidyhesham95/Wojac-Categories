import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Screen/Details/Button.dart';
import 'Countiner-Border.dart';
import 'Countiner-image.dart';
import 'Countiner-text.dart';
import '../../../const/Colors.dart';
import '../HomeScreen/Search/TextSearch.dart';
import 'NewList.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        color: kGround,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 120),
                          child: ImgCount(),
                        ),
                        SizedBox(height: 15,),
                        Row(

                          children: [
                            TexCoun(data: 'Wojak',),
                            SizedBox(width: 17)    ,
                            TexCoun(data: 'Wojak',),
                            SizedBox(width: 17)    ,
                            TexCoun(data: 'Wojak',),
                            SizedBox(width: 17)    ,
                            TexCoun(data: 'Wojak',),
                            SizedBox(width: 17)    ,
                            TexCoun(data: 'Wojak',),
                            SizedBox(width: 18)    ,
                            TexCoun(data: 'Wojak',),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 60,),
                    Column(
                      children: [
                        Container(
                          height: size.height*0.12,
                            width: size.width*0.50,
                            child: TextSearch(),
                        ),
                      Container(
                        height: size.height*0.50,
                        width: size.width*0.50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: kgreen,
                            )
                        ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 200),
                            child: Row(
                              children: [
                                Button(data: 'PNG',icon: Icons.arrow_circle_down,onPressed: (){},),
                                SizedBox(width: 100,),
                                Button(data: 'PNG',icon: Icons.photo,onPressed: (){},),
                              ],
                            ),
                          ),
                          SizedBox(height: 40,),

                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 200),
                            child: Row(
                              children: [
                                Button(data: 'Favorite',icon: Icons.favorite,onPressed: (){},),
                                SizedBox(width: 100,),
                                Button(data: 'Share',icon: Icons.share,onPressed: (){},),
                              ],
                            ),
                          ),
                          SizedBox(height: 50,),

                          BorderCount()
                        ],
                      ),
                    )
                      ],
                    ),
                  ],
            ),
                SizedBox(height: 70,),
                NewList(),
      ]
      ),
          ),
        )
      ),
    );
  }
}

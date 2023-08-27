import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';
import '../../../Widget/heartWidget.dart';
import '../Details/Details.dart';

class ListWojacFav extends StatelessWidget {
  const ListWojacFav({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.26,
      child: GestureDetector(
        onTap: () {},
        child: ListView.builder(
             shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Container(
                  height: size.height*0.26,
                  width: size.width*0.15,
                  decoration: BoxDecoration(
                    color: kColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                           Container(
                                height: size.height*0.20,
                                width: size.width*0.15,
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

                          Expanded(
                            child: Row(
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
                          ),
                        ],


                  ),
                ),
              );
            }),
      ),
    );
  }
}

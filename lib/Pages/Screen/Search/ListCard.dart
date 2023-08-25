import 'package:flutter/cupertino.dart';
import 'package:wojac_app/const/Colors.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      height: size.height*0.35,
      child: ListView.builder(

         // physics: ClampingScrollPhysics(),
         // shrinkWrap: true,
          scrollDirection: Axis.horizontal,

        itemCount: 5,
          itemBuilder: (context,index){
          return Stack(
            children: [
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  color: kColor,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    Container(
                        height: 100,
                        width: 130,
                       decoration: BoxDecoration(
                       color: kGround,
                       borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('assets/images/img (1).png',)),
                    SizedBox(height: 10,),
                    Text('Wojak'),
                  ],
                ),
              ),

            ],
          );

          }
      ),
    );
  }
}

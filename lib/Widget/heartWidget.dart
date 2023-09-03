import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';


class HeartWidget extends StatelessWidget {
  const HeartWidget({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 30,
     width: 30,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(8),
       color:kgreen,

     ),
      child: IconButton(
        style: IconButton.styleFrom(
          shape: CircleBorder(),

        ),
        onPressed: (){},
        icon: Icon(Icons.favorite,color:Colors.white,size: 17,),),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';


class HeartWidget extends StatelessWidget {
  const HeartWidget({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Container(
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(8),
       color:kColor.withOpacity(0.1) ,
     ),
      child: IconButton(
        style: IconButton.styleFrom(
          shape: CircleBorder(),

        ),
        onPressed: (){},
        icon: Icon(Icons.favorite,color:Colors.white,),),
    );
  }
}

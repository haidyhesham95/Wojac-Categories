
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:wojac_app/Pages/Screen/FavoriteScreen/widgets/animations/animationClassController.dart';
import 'package:wojac_app/Pages/Screen/FavoriteScreen/widgets/topPart/topCont/com/topContButton.dart';
import 'package:wojac_app/Pages/Screen/FavoriteScreen/widgets/topPart/topCont/com/topContTitle.dart';
import 'package:wojac_app/Pages/Screen/FavoriteScreen/widgets/topPart/topCont/topButtons.dart';
import 'package:wojac_app/Widget/animationWidget.dart';
import 'package:wojac_app/const/Styels.dart';


class TopContainer extends StatelessWidget {
  final double width;
  const TopContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Container(
        width: width,
        height: 120,
       // color: Colors.blue,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
           TopContTitle(
               title: "Favorite",
             icon: CustomAnimatedWidget(
               count: 2,
               animationType: AnimationType.specificCount,
               child: Icon(
                 Icons.favorite,
                 color: Colors.red,
                 size: 50,
               ),

             ),
             //Icon(Icons.heart_broken, color: Colors.red, size: 50,)),
           ),
            TopButtons()
          ],
        ),
      ),
    );
  }
}

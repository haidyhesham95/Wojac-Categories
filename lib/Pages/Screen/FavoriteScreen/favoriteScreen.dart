
import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Screen/FavoriteScreen/widgets/bodyPart/FavGridView/FavGridView.dart';
import 'package:wojac_app/Pages/Screen/FavoriteScreen/widgets/topPart/topCont/topContainer.dart';
import 'package:wojac_app/const/Styels.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     body: Container(
       child: Column(
         children: [
           TopContainer(width: size.width),

           FavGridView(size: size,)
         ],
       ),
     ),
    );
  }
}



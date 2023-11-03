import 'package:flutter/material.dart';
import 'package:wojac_app/Features/FavoriteScreen/widgets/bodyPart/FavGridView/fav_grid_view.dart';
import 'package:wojac_app/Features/FavoriteScreen/widgets/topPart/topCont/top_container.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          TopContainer(width: size.width),
          const FavGridView(),
        ],
      ),
    );
  }
}

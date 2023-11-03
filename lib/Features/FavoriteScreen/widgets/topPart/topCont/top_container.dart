import 'package:flutter/material.dart';
import 'package:wojac_app/Features/FavoriteScreen/widgets/animations/animationClassController.dart';
import 'package:wojac_app/Features/FavoriteScreen/widgets/topPart/topCont/com/top_cont_title.dart';
import 'package:wojac_app/Features/FavoriteScreen/widgets/topPart/topCont/top_buttons.dart';

import '../../../../../utils/widgets/animation_widget.dart';

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
        margin: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          children: [
            TopContTitle(
              title: "Favorites",
              icon: CustomAnimatedWidget(
                count: 2,
                animationType: AnimationType.specificCount,
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 50,
                ),
              ),
              //Icon(Icons.heart_broken, color: Colors.red, size: 50,)),
            ),
            const SizedBox(
              height: 10,
            ),
            const TopButtons()
          ],
        ),
      ),
    );
  }
}

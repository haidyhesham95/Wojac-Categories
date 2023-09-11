import 'package:flutter/material.dart';

class Img_List extends StatelessWidget {
   Img_List({super.key, required this.assetName});
 final String assetName;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),

            )
        ),
        child: AspectRatio(
          aspectRatio: 16/9,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.5),
                image: DecorationImage(
                  image: AssetImage(assetName),

                )
            ),

          ),
        ));
  }
}

import 'package:flutter/material.dart';

class ImgList extends StatelessWidget {
  const ImgList({super.key, required this.assetName});
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.1),
            image: DecorationImage(
              image: AssetImage(assetName),
            ),
          ),
        ),
      ),
    );
  }
}

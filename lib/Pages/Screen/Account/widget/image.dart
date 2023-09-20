

import 'package:flutter/Material.dart';

import '../../../../const/Colors.dart';

class ImageAccount extends StatelessWidget {
  ImageAccount({super.key, required this.height, required this.width, required this.ImageImage,  required this.colorAccount});
  final double height ;
  final double width ;
  final String ImageImage;
  final Color colorAccount ;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height*height,
      width: size.width*width,
      decoration: BoxDecoration(
        color: colorAccount,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        this.ImageImage,
      ),
    );
  }
}

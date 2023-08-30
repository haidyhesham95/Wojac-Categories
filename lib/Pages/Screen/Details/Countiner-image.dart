import 'package:flutter/material.dart';

import '../../../const/Colors.dart';

class ImgCount extends StatelessWidget {
  const ImgCount({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  Container(
      height: size.height*0.50,
      width: size.width*0.30,
      decoration: BoxDecoration(
        color: kColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        'assets/images/img2.png',


      ),
    );
  }
}

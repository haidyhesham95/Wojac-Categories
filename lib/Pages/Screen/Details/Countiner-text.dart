import 'package:flutter/material.dart';

import '../../../const/Colors.dart';
import '../../../const/Styels.dart';

class TexCoun extends StatelessWidget {
  const TexCoun({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.035,
      width:size.width*0.040,
      decoration: BoxDecoration(
          color: kGround,
          border: Border.all(
            width: 0.5,
            color: kgreen,
          )
      ),
      child: Center(
        child: Text(
          data,style: Styles.textStyle10,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/Colors.dart';
import '../../../const/Styels.dart';

class TexCoun extends StatelessWidget {
   TexCoun({
    super.key,
    required this.data,
    this.alignment
  });
  final String data;
  TextAlign? alignment ;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth:size.width*0.040,
        minWidth:size.width*0.040
      ),
      padding: EdgeInsets.symmetric(
        horizontal: .7.w,
      ),
      height: size.height*0.035,
      decoration: BoxDecoration(
          color: kGround,
          border: Border.all(
            width: 0.5,
            color: kgreen,
          )
      ),
      child: Center(
        child: Text(
          data,

          style: Styles.textStyle10,


          textAlign: alignment,



        ),
      ),
    );
  }
}

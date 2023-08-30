import 'package:flutter/material.dart';

import '../../../const/Colors.dart';
import '../../../const/Styels.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.data, this.icon, required this.onPressed});
 final String data;
 final IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.060,
      width: size.width*0.080,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: kgreen,
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                data,style:Styles.textStyle18,

              ),
              Icon(icon,color: Colors.white,size: 20,)
            ],
          )
      ),


    );
  }
}


import 'package:flutter/material.dart';
import 'package:wojac_app/const/Styels.dart';

class TopContButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  Color? backgroundColor;
   TopContButton({super.key,this.backgroundColor, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ()=>onPressed(),
      child: Container(
        child: Text(title, style: Styles.textStyle20),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
            border: Border.all(
                color: Colors.white,
                width: 1
            ),
          borderRadius: BorderRadius.all(Radius.circular(5))
        ),
      ),
    );
  }
}

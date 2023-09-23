
import 'package:flutter/material.dart';
import 'package:wojac_app/const/Styels.dart';

class TopContTitle extends StatelessWidget {
  final Widget icon;
  final String title;
  const TopContTitle({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title, style: Styles.textStyle20.copyWith(fontSize: 50, fontWeight: FontWeight.bold),),
        SizedBox(width: 10,),
        icon
      ],
    );
  }
}

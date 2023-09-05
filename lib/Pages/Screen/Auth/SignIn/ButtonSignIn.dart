import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({super.key, required this.data, this.onPressed});
  final String data;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: onPressed,
      color: kGround,
      child:  Container(
        height: 48,
        width: 300,
        child: Center(
          child: Text(
              data,style:Styles.textStyle18,

          ),
        ),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}

import 'package:flutter/Material.dart';

class Elevate_Button extends StatelessWidget {
   Elevate_Button({super.key, required this.onPressed,required this.backgroundColor,required this.foregroundColor, required this.text});
  final void Function()? onPressed;
   final String text;
   Color? backgroundColor;
   Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      onPressed: onPressed,
      child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),)
    );
  }
}

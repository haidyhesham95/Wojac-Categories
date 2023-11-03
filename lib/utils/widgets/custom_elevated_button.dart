import 'package:flutter/Material.dart';

// ignore: must_be_immutable
class CustomElevateButton extends StatelessWidget {
  CustomElevateButton(
      {super.key,
      required this.onPressed,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.text});
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
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

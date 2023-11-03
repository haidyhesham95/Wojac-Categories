import 'package:flutter/material.dart';

import '../app_styles.dart';

// ignore: must_be_immutable
class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,
    required this.text,
    required this.data,
    required this.onPressed,
  });
  String text;
  String data;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppStyles.textStyle318sp),
        MaterialButton(
          onPressed: onPressed,
          child: Text(data, style: AppStyles.textStyle318sp),
        )
      ],
    );
  }
}

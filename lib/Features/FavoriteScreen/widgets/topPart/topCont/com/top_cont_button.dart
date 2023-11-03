import 'package:flutter/material.dart';
import 'package:wojac_app/utils/app_styles.dart';

// ignore: must_be_immutable
class TopContButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  Color? backgroundColor;
  TopContButton({
    super.key,
    this.backgroundColor,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Text(title, style: AppStyles.textStyle20),
      ),
    );
  }
}

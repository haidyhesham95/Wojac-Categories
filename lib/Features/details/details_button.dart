import 'package:flutter/material.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/app_styles.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton(
      {super.key, required this.data, this.icon, required this.onPressed});
  final String data;
  final IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.060,
      width: context.screenWidth * 0.080,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: AppColors.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              data,
              style: AppStyles.textStyle18,
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}

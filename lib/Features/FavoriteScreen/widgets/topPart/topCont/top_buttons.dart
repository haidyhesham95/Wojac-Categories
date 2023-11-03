import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Features/FavoriteScreen/favorite_screen.dart';
import 'package:wojac_app/Features/top_screen/top_screen.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/app_navigator.dart';

import 'com/top_cont_button.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TopContButton(
          title: "Designer",
          backgroundColor: AppColors.green,
          onPressed: () {
            debugPrint("designer button clicked");
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TopScreen(),
                ));
          },
        ),
        SizedBox(width: 10.w),
        TopContButton(
          title: "Wojacs",
          onPressed: () {
            debugPrint("Wojacs button clicked");
            context.push(const FavoriteScreen());
          },
        )
      ],
    );
  }
}

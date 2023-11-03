import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_images.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class BorderCount extends StatelessWidget {
  const BorderCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.10,
      width: context.screenWidth * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.ground,
        border: Border.all(
          width: 0.7,
          color: AppColors.white,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: const Text(
                'Ahmed Zone',
                style: AppStyles.textStyle15,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                height: context.screenHeight * 0.045,
                width: context.screenWidth * 0.065,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.green,
                    ),
                    child: const Text(
                      'Follow',
                      style: AppStyles.textStyle18,
                    )),
              ),
            ),
            Image.asset(AppImages.warning),
          ],
        ),
      ),
    );
  }
}

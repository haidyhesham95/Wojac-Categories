import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';
import '../../../../utils/widgets/custom_image.dart';
import 'Coulmn-Otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ground,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(5.w > 10 ? 5.w : 10),
            padding: EdgeInsets.all(5 > 2.w ? 5 : 2.w),
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: const CoulmnOtp(),
                    ),
                  ),
                  if (context.screenWidth >= 1260)
                    const CustomImage(name: 'assets/images/code.jpg')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

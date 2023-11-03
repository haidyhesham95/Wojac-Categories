import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Features/auth/Password/otp/textfield_otp.dart';

import '../../../../utils/app_styles.dart';
import '../../../../utils/widgets/Custom_Button.dart';
import '../../../../utils/widgets/custom_text_button.dart';
import '../new_password_screen.dart';
import 'controller.dart';

class CoulmnOtp extends StatelessWidget {
  const CoulmnOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Please check your phone', style: AppStyles.textStyle8sp),
                Image.asset(
                  'assets/images/sms.png',
                  width: 12.w > 40 ? 12.w : 40,
                  height: 30.h > 40 ? 30.h : 40,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'We have sent you a Verification code by Sms',
              style: AppStyles.textStyle318sp,
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldOtp(
              controller: c1,
              first: true,
              last: false,
            ),
            SizedBox(
              width: 5.w,
            ),
            TextFieldOtp(
              controller: c2,
              first: false,
              last: false,
            ),
            SizedBox(
              width: 5.w,
            ),
            TextFieldOtp(
              controller: c3,
              first: false,
              last: false,
            ),
            SizedBox(
              width: 5.w,
            ),
            TextFieldOtp(
              controller: c4,
              first: false,
              last: true,
            ),
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
        CustomButton(
          data: 'Confirm',
          onPressed: () {
            //Get.offNamed(AppStringRoutes.register);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const NewPassword(),
              ),
            );
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextButton(
          text: 'Don\'t Recevied any code?',
          data: 'Resend',
          onPressed: () {},
        ),
      ],
    );
  }
}

import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Pages/Screen/Auth/Password/otp/textfield_otp.dart';

import '../../../../../Widget/Custom_Button.dart';
import '../../../../../Widget/Custom_TextButton.dart';
import '../../../../../const/Styels.dart';
import '../NewPassword.dart';
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
                Text(
                    'Please check your phone',
                    style: Styles.textStyle8sp

                ),

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
              style: Styles.textStyle318sp,
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField_Otp(
              controller: c1,
              first: true,
              last: false,
            ),
            SizedBox(
              width: 5.w,
            ),
            TextField_Otp(
              controller: c2,
              first: false,
              last: false,
            ),
            SizedBox(
              width: 5.w,
            ),
            TextField_Otp(
              controller: c3,
              first: false,
              last: false,
            ),
            SizedBox(
              width: 5.w,
            ),
            TextField_Otp(
              controller: c4,
              first: false,
              last: true,
            ),
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
        Custom_Button(
          data: 'Confirm',
          onPressed: () {
            //Get.offNamed(AppStringRoutes.register);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder:(context)=> New_Password(),
              ),
            );
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        Custom_TextButton(
          text: 'Don\'t Recevied any code?',
          data: 'Resend',
          onPressed: () {},
        ),
      ],
    );
  }
}

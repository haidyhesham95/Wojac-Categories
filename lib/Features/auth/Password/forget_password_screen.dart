import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';
import 'package:wojac_app/utils/widgets/custom_image.dart';
import '../../../utils/app_styles.dart';
import '../../../utils/widgets/custom_field.dart';
import '../../../utils/widgets/Custom_Button.dart';
import 'otp/otp_screen.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.ground,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5.w > 10 ? 5.w : 10),
          padding: EdgeInsets.all(5 > 2.w ? 5 : 2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Forget your password',
                            style: AppStyles.textStyle8sp,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Image.asset(
                            'assets/images/forgetpassword.jpg',
                            width: 12.w > 40 ? 12.w : 40,
                            height: 30.h > 40 ? 30.h : 40,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      CustomField(
                          hintText: 'Example@email.com',
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          data: 'Your Email'),
                      SizedBox(
                        height: 60.h,
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OtpScreen(),
                            ),
                          );
                        },
                        data: 'Reset Password',
                      ),
                    ],
                  ),
                ),
              ),
              if (context.screenWidth >= 1260)
                const CustomImage(name: 'assets/images/pass.webp')
            ],
          ),
        ),
      ),
    ));
  }
}

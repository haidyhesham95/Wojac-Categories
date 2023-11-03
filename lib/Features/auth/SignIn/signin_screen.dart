import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/app_navigator.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';
import '../../../utils/widgets/custom_field.dart';
import '../../../utils/widgets/custom_columnt.dart';
import '../../../utils/widgets/custom_image.dart';
import '../../../utils/widgets/forget_button.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../../utils/widgets/custom_text_button.dart';
import '../../../utils/widgets/google_button.dart';
import '../SignUp/signup_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomCoulmnT(
                            text1: 'Welcome Back',
                            text2: 'Sign In to start your wojak journey',
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          CustomField(
                              hintText: 'Example@email.com',
                              keyboardType: TextInputType.emailAddress,
                              obscureText: false,
                              data: 'Email'),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomField(
                                  hintText: 'at least 8 characters',
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  data: 'Password'),
                              const ForgetButton(),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomButton(
                            onPressed: () {},
                            data: 'Sign In',
                          ),
                          SizedBox(height: 15.h),
                          const GoogleButton(),
                          SizedBox(
                            height: 30.h,
                          ),
                          CustomTextButton(
                            text: 'Don\'t have an account ?',
                            data: ' Sign Up',
                            onPressed: () {
                              context.pushReplacement(const SignupScreen());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (context.screenWidth >= 1260)
                    const CustomImage(name: 'assets/images/signin.png')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

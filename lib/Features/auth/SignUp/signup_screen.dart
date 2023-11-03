import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Features/auth/SignIn/signin_screen.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/widgets/custom_field.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../../utils/widgets/custom_columnt.dart';
import '../../../utils/widgets/custom_image.dart';
import '../../../utils/widgets/custom_text_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                            text1: 'Welcome',
                            text2: 'Sign up to start your wojak journey',
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          CustomField(
                              hintText: 'UserName',
                              keyboardType: TextInputType.name,
                              obscureText: false,
                              data: 'UserName'),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomField(
                              hintText: 'Example@email.com',
                              keyboardType: TextInputType.emailAddress,
                              obscureText: false,
                              data: 'Email'),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomField(
                              hintText: 'at least 8 characters',
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              data: 'Password'),
                          SizedBox(
                            height: 60.h,
                          ),
                          CustomButton(
                            onPressed: () {},
                            data: 'Sign Up',
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomTextButton(
                              text: 'Already a member?',
                              data: ' Sign In',
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SigninScreen(),
                                  ),
                                );
                              }),
                        ],
                      ),
                    ),
                  ),
                  if (context.screenWidth >= 1260)
                    const CustomImage(name: 'assets/images/wojacUp.jpg')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

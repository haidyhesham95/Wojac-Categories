import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';

import '../../../utils/widgets/custom_field.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../../utils/widgets/custom_columnt.dart';
import '../../../utils/widgets/custom_image.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                      const CustomCoulmnT(
                        text1: 'New Password',
                        text2: 'Creat New password to start your wojak journey',
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      CustomField(
                        hintText: 'Example@email.com',
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        data: 'Your Email',
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomField(
                        hintText: 'at least 8 characters',
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        data: 'New Password',
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      CustomButton(
                        onPressed: () {},
                        data: 'Submit',
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

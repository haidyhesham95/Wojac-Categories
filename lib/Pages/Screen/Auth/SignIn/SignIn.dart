
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Widget/CustomField.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';
import '../../../../Widget/Custom_ColmnT.dart';
import '../../../../Widget/Custom_TextButton.dart';
import '../../../../Widget/ad_widegt.dart';
import '../SignUp/SignUp.dart';
import '../../../../Widget/BottonForget.dart';
import '../../../../Widget/ButtonGoogle.dart';
import '../../../../Widget/Custom_Button.dart';
import 'dart:ui_web';
import '../../../../Widget/Custom_Image.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kGround,
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
                          Custom_CoulmnT(
                            text1: 'Welcome Back',
                            text2: 'Sign In to start your wojak journey',
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          CustomField(hintText: 'Example@email.com', keyboardType:TextInputType.emailAddress , obscureText: false, data: 'Email'),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomField(hintText: 'at least 8 characters', keyboardType:TextInputType.visiblePassword , obscureText: true, data: 'Password'),
                              const ButtonForget(),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Custom_Button(
                            onPressed: () {},
                            data: 'Sign In',
                          ),

                          SizedBox(height: 15.h),
                          const ButtonGoogle(),
                          SizedBox(
                            height: 30.h,
                          ),
                           Custom_TextButton(text: 'Don\'t have an account ?',data:' Sign Up',onPressed: (){
                             Navigator.pushReplacement(
                               context,
                               MaterialPageRoute(
                                 builder:(context)=> const SignUp(),
                               ),
                             );
                           },),
                        ],
                      ),
                    ),
                  ),
                  if (MediaQuery.sizeOf(context).width >= 1260)
                  Custom_Image(name: 'assets/images/signin.png')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

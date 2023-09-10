import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Pages/Screen/Auth/SignIn/SignIn.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';
import '../../../../Widget/Custom_ColmnT.dart';
import '../../../../Widget/Custom_Image.dart';
import '../../../../Widget/Custom_TextButton.dart';
import '../SignIn/BottonForget.dart';
import '../SignIn/ButtonGoogle.dart';
import '../../../../Widget/Custom_Button.dart';
import '../../../../Widget/CustomField.dart';

import 'dart:ui_web';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              padding: EdgeInsets.only(left: 50),
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
                            text1: 'Welcome',
                            text2: 'Sign up to start your wojak journey',
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          CustomField(hintText: 'UserName', keyboardType:TextInputType.name , obscureText: false, data: 'UserName'),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomField(hintText: 'Example@email.com', keyboardType:TextInputType.emailAddress , obscureText: false, data: 'Email'),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomField(hintText: 'at least 8 characters', keyboardType:TextInputType.visiblePassword , obscureText: true, data: 'Password'),
                          SizedBox(
                            height: 60.h,
                          ),
                          Custom_Button(
                            onPressed: () {},
                            data: 'Sign Up',
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Custom_TextButton(text: 'Already a member?',data:' Sign In',onPressed: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder:(context)=> SignIn(),
                              ),
                            );
                          }

                          ),

                        ],
                      ),
                    ),
                  ),
                  if (MediaQuery.sizeOf(context).width >= 1260)
                    Custom_Image(name: 'assets/images/wojacUp.jpg')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
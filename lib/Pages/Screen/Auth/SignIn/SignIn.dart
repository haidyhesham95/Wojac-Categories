import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';
import 'AccountSignup.dart';
import 'BottonForget.dart';
import 'ButtonGoogle.dart';
import 'ButtonSignIn.dart';
import 'DividerOr.dart';
import 'dart:ui_web';

import 'Image.dart';
import 'TextField.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return
       SafeArea(
         child: Scaffold(
           backgroundColor: kWhite,
           body: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            color: kWhite,
            
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Welcome Back 👋',style: TextStyle(
                                fontSize: 10.sp,
                              ),),
                              SizedBox(height: 20.h,),
                              Text('Today is a new day,You shape it.\r SignIn to start managing your projects.',style: TextStyle(
                                fontSize: 5.sp,
                              ),),
                              SizedBox(height: 40.h,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,bottom: 5),
                                child: Text('Email'),
                              ),
                              ConstField(
                                hintText: 'Example@email.com',
                                keyboardType:TextInputType.emailAddress,
                                obscureText: false,

                              ),
                              SizedBox(height: 20.h,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,bottom: 5),
                                child: Text('Password'),
                              ),
                              ConstField(
                                hintText: '8 Characters',
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,

                              ),
                            ],
                          ),
                          const ButtonForget(),
                          SizedBox(height: 20.h,),
                          ButtonSignIn(
                            onPressed: (){},
                            data: 'Sign In' ,
                          ),
                          SizedBox(height: 15.h),
                           DividerOr(),
                          SizedBox(height: 15.h),
                          const ButtonGoogle(),
                          SizedBox(height: 30.h,),
                          const AccountSignUp(),
                        ],
                      ),
                    ),

                    Image_I(name: 'assets/images/signin.png',),

                  ],
                ),
              ),
            ),
      
    ),
         ),
       );
  }
}

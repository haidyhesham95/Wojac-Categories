import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';
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
           backgroundColor: kGround,
           body: SingleChildScrollView(
             child: Container(
              margin:  EdgeInsets.all(5.w > 10 ? 5.w : 10),
              padding:  EdgeInsets.all(5 > 2.w ? 5 : 2.w),
              child: Padding(
                padding:  EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(
                            horizontal: 5.w
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Welcome Back 👋',
                                    style: fontStyle(
                                        fontSize:10.sp > 30 ? 10.sp : 30,
                                        weight: FontWeight.bold,
                                        color: kWhite
                                    )),
                                SizedBox(
                                  height: 20.h,),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Sign in to start your Wojak journey',
                                      style: TextStyle(
                                          fontSize: 5.sp > 18 ? 5.sp : 18,
                                          color: kWhite
                                      ),),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/images/star.png',
                                      width: 6.w> 30 ? 6.w : 30,
                                      height: 20.h> 30 ? 0.h:30,
                                    )
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 40.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,bottom: 5),
                                  child: Text(
                                    'Email',
                                    style: TextStyle(
                                      color: kWhite,
                                      fontSize: 15>3.sp ? 15 : 3.sp,
                                    ),
                                  ),
                                ),
                                ConstField(
                                  hintText: 'Example@email.com',
                                  keyboardType:TextInputType.emailAddress,
                                  obscureText: false,

                                ),
                              ],
                            ),

                            SizedBox(height: 20.h,),

                             Column(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,bottom: 5),
          child: Text(
            'Password',
            style: TextStyle(
              color: kWhite,
              fontSize: 15>3.sp ? 15 : 3.sp,
            ),
          ),
        ),
        ConstField(
          hintText: '8 Characters',
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,

        ),

      ],
    ),
    const ButtonForget(),
  ],
),

                            SizedBox(height: 20.h,),
                            ButtonSignIn(
                              onPressed: (){},
                              data: 'Sign In' ,
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'or',
                                  style: TextStyle(
                                      fontSize: 4.sp > 20 ? 4.sp : 20,
                                    color: kWhite
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            const ButtonGoogle(),
                            SizedBox(height: 30.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const AccountSignUp(),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    if(MediaQuery.sizeOf(context).width >= 1260)
                      Expanded(
                        child: Container(
                         constraints: BoxConstraints(
                           maxHeight: 620.h
                         ),
                          child: Image.asset(
                              'assets/images/signin.png',

                          ),
                        )),

                  ],
                ),
              ),

    ),
           ),
         ),
       );
  }
}

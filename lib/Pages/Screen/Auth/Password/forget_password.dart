import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Pages/Screen/Auth/Password/NewPassword.dart';
import 'package:wojac_app/const/Colors.dart';
import '../../../../Widget/CustomField.dart';
import '../../../../Widget/Custom_ColmnT.dart';
import '../../../../Widget/Custom_Image.dart';
import '../../../../const/Styels.dart';
import '../../../../Widget/Custom_Button.dart';
import 'otp/otp.dart';

class Forget_Password extends StatelessWidget {
  const Forget_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: kGround,
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
                              Text('Forget your password', style: Styles.textStyle8sp,),
                              SizedBox(width: 3.w,),
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
                          CustomField(hintText: 'Example@email.com', keyboardType:TextInputType.emailAddress , obscureText: false, data: 'Your Email'),
                          SizedBox(
                            height: 60.h,
                          ),
                          Custom_Button(
                            onPressed: () {

                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder:(context)=> Otp(),
                                  ),
                                );


                            },
                            data: 'Reset Password',
                          ),

                        ],
                      ),
                    ),
                  ),
                  if (MediaQuery.sizeOf(context).width >= 1260)
                    Custom_Image(name: 'assets/images/pass.webp')
                ],
              ),
            ),
          ),

        ));
  }
}

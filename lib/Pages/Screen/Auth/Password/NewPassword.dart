import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';

import '../../../../Widget/CustomField.dart';
import '../../../../Widget/Custom_ColmnT.dart';
import '../../../../Widget/Custom_Image.dart';
import '../../../../const/Styels.dart';
import '../../../../Widget/Custom_Button.dart';



class New_Password extends StatelessWidget {
  const New_Password ({super.key});

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
                          Custom_CoulmnT(
                            text1: 'New Password',
                            text2: 'Creat New password to start your wojak journey',
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                          CustomField(hintText: 'Example@email.com', keyboardType:TextInputType.emailAddress , obscureText: false, data: 'Your Email'),

                          SizedBox(
                            height: 20.h,
                          ),
                          CustomField(hintText: 'at least 8 characters', keyboardType:TextInputType.visiblePassword , obscureText: true, data: 'New Password'),
                          SizedBox(
                            height: 60.h,
                          ),
                          Custom_Button(
                            onPressed: () {

                            },
                            data: 'Submit',
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
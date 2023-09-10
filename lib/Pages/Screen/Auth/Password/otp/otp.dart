import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';
import '../../../../../Widget/Custom_Image.dart';
import 'Coulmn-Otp.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});
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
                      child: CoulmnOtp(),
                    ),
                  ),
                  if (MediaQuery.sizeOf(context).width >= 1260)
                    Custom_Image(name: 'assets/images/code.jpg')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

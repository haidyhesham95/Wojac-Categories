import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';

class AccountSignUp extends StatelessWidget {
  const AccountSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Don\'t have an account ?',
          style: TextStyle(
          fontSize: 3.sp > 18 ? 3.sp : 18,
            color: kWhite
        ),),

        MaterialButton(
            onPressed: (){

            },
            child: Text(
              'Sign Up',
               style: TextStyle(
                   fontSize: 3.sp > 18 ? 3.sp : 18,
                   color: kWhite
               ),
              ))
      ],
    );
  }
}
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      color: kWhite,
      child:  Container(
        height: 48.h > 50 ? 48.h : 50,
        width: 75.w > 185 ? 75.w : 185,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png',height: 25.h,width: 10.w,),
              SizedBox(width: 5.w,),
              Text(
                'Sign In With Google',style: TextStyle(fontSize: 4.sp),

              ),
            ],
          ),
        ),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}

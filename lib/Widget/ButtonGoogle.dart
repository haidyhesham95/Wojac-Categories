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
        height: 38.h > 50 ? 38.h : 50,
        width: 116.w > 290 ? 116.w : 290,
        child: Center(
          child: Row(
            children: [
              Image.asset('assets/images/google.png',
                height: 25.h > 25 ? 25.h : 25,
                width: 10.w > 25 ? 10.w : 25  ,),
              SizedBox(width: 5.w,),
              Text(
                'Sign In With Google',
                style:TextStyle(
                  fontSize: 5.sp > 18 ? 5.sp : 18,
                  color: kGround,
                )

              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,

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

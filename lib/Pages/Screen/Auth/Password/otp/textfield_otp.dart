import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

class TextField_Otp extends StatelessWidget {
 const TextField_Otp({Key? key,required this.first,required this.last,required this.controller,}) : super(key: key);
  final bool first;
  final bool last;
 final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:kgreen,
          width: 1.5,

        ),
        borderRadius: BorderRadius.circular(18),
        color:Colors.grey.withOpacity(0.1),
      ),
      child: TextField(
        onChanged:((value){
          if (value.isNotEmpty && last==false){
            FocusScope.of(context).nextFocus();
          }else if(value.isEmpty && first==false){
            FocusScope.of(context).previousFocus();
          }

        }),

        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        style:Styles.textStyle4sp,
        decoration: InputDecoration(
            border: InputBorder.none,
            constraints: BoxConstraints(
              minHeight: 80.h >80 ? 80.h : 80,
              maxWidth: 30.w > 70 ? 30.w : 70,

            )),

      ),
    );
  }
}
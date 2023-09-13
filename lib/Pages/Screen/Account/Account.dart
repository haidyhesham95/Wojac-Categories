import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Pages/Screen/account/widget/image.dart';

import '../../../const/Colors.dart';
import '../../../const/Fonts.dart';
import '../../../const/img/img.dart';
import '../Details/Countiner-image.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Padding(padding:  EdgeInsets.all(12.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageAccount(height: 0.60, width: 0.40, ImageImage: img.img2,),
             Column(
               children: [
                 Container(padding: const EdgeInsetsDirectional.only(top: 15,start: 25),
                     child: const Text("Ahmedzon",style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold,fontFamily: Font.quicksand),)),
                 Row(children: [
                   ImageAccount(height: 0.0055, width: 0.0055, ImageImage: img.reward,),
                 ],)
               ],
             )
            ],
            ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}

import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Pages/Screen/Top_Screen/Top_List.dart';
import 'package:wojac_app/Widget/Container_img_list.dart';

import '../../../Widget/Animation+Text.dart';
import '../../../Widget/item.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  SafeArea(
      child: Scaffold(
        body:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,),
               Padding(
                 padding: EdgeInsets.only(left: 60),
                 child: Animation_Text(
                   text: 'Top',
                   asset: 'assets/images/4360-8958-star-animation.riv',
                 ),
               ),
              SizedBox(
                height: 15.h
                ,),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    Wrap(
                      spacing: 15.w,
                      runSpacing: 3.5.h > 10? 3.5.h : 10,
                      children: List.generate(6, (index) => TopList(size: size)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}

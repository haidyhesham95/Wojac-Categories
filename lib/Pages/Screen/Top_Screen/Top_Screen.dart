import 'package:flutter/Material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Pages/Screen/FavoriteScreen/widgets/animations/animationClassController.dart';
import 'package:wojac_app/Pages/Screen/Top_Screen/Top_List.dart';
import 'package:wojac_app/Widget/Container_img_list.dart';
import 'package:wojac_app/Widget/animationWidget.dart';
import 'package:wojac_app/const/Styels.dart';

import '../../../Widget/Animation+Text.dart';
import '../../../Widget/item.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  Text("Top", style: Styles.textStyle25),
                  SizedBox(width: 5,),
                  CustomAnimatedWidget(
                    child: Icon(Icons.star, size: 40, color: Colors.amber,),
                    count: 0,
                    animationType: AnimationType.infinityLoop,
                    repeatDuration: Duration(minutes: 1),
                    effects: [
                      RotateEffect(
                        begin: 0,
                        end: 0.2
                      )
                    ],
                  ),
                ],
              )
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
        )
      ],
    );
  }
}

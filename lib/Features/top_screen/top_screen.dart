import 'package:flutter/Material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Features/FavoriteScreen/widgets/animations/animationClassController.dart';
import 'package:wojac_app/Features/top_screen/Top_List.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';
import '../../utils/app_styles.dart';
import '../../utils/widgets/animation_widget.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    const Text("Top", style: AppStyles.textStyle25),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomAnimatedWidget(
                      count: 0,
                      animationType: AnimationType.infinityLoop,
                      repeatDuration: const Duration(minutes: 1),
                      effects: const [RotateEffect(begin: 0, end: 0.2)],
                      child: const Icon(
                        Icons.star,
                        size: 40,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: context.screenWidth,
              child: Column(
                children: [
                  Wrap(
                    spacing: 15.w,
                    runSpacing: 3.5.h > 10 ? 3.5.h : 10,
                    children: List.generate(6, (index) => const TopList()),
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

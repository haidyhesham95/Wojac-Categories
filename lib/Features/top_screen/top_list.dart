import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../utils/widgets/Container_img_list.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class TopList extends StatelessWidget {
  const TopList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.w > 400 ? 75.w : 400,
      height: 212.h > 300 ? 212.h : 300,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: AppColors.ground.withOpacity(.7),
                        width: 0.45.w))),
            child: const ImgList(assetName: 'assets/images/wojacUp.jpg'),
          ),
          Container(
            height: 50.h > 60 ? 50.h : 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'the first wojak title sjdhs jkashkdhkjsahd ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(IconlyLight.image),
                      SizedBox(
                        width: 1.w,
                      ),
                      const Text('10'),
                      SizedBox(
                        width: 2.w,
                      ),
                      const Icon(IconlyLight.heart),
                      SizedBox(
                        width: 1.w,
                      ),
                      const Text('20'),
                      const Spacer(),
                      Container(
                        height: 20.h,
                        width: 30.w > 130 ? 30.w : 130,
                        decoration: BoxDecoration(
                            color: AppColors.ground,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {},
                          child:
                              Text('Follow', style: AppStyles.textStyle3bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

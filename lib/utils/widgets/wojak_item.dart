import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';

import '../app_styles.dart';
import 'Container_img_list.dart';
import 'heart_widget.dart';

class WojakItem extends StatelessWidget {
  const WojakItem({super.key, this.image});
  final String? image;

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
                  width: 0.45.w,
                ),
              ),
            ),
            child: Stack(
              children: [
                ImgList(assetName: image ?? 'assets/images/Wojak_cropped.jpg'),
                const Positioned(
                  top: 6,
                  right: 9,
                  child: HeartWidget(),
                ),
              ],
            ),
          ),
          Container(
            height: 40.h > 50 ? 40.h : 50,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          const AssetImage('assets/images/profile.png'),
                      radius: 12.r,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      child: SizedBox(
                        width: 35.w > 185 ? 35.w : 185,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'the first wojak title sjdhs jkashkdhkjsahd ',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Wojak',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20.h,
                  width: 30.w > 130 ? 30.w : 130,
                  decoration: BoxDecoration(
                    color: AppColors.ground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Follow', style: AppStyles.textStyle3bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

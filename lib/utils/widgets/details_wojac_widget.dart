import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wojac_app/utils/app_colors.dart';

import '../app_styles.dart';
import '../app_svgs.dart';


class DetailsWojacWidget extends StatelessWidget {
  const DetailsWojacWidget({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 275),
      width: size.width * .18,
      height: 215.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/pass.webp',
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14.h, right: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(2.w),
                    width: 10.w,
                    height: 10.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromARGB(166, 216, 217, 219),
                    ),
                    child: SvgPicture.asset(AppSvgs.favorite, color: AppColors.white),
                  ),
                ),
                // Spacer(),/
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: size.width,
            height: 40.h,
            decoration: const BoxDecoration(
              color: Color(0xFFD8D9DB),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/R.5a4b86bf8fa2479b8f29915cb3b523bc?rik=K%2bVs9wkeCN4aEA&pid=ImgRaw&r=0',
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Ahmedzon',
                    style: AppStyles.textStyle15.copyWith(
                      color: AppColors.ground,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  MaterialButton(
                    minWidth: 100,
                    height: 26.h,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: AppColors.ground,
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        fontSize: 3.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/app_colors.dart';
import 'package:wojac_app/utils/extensions/device_info.dart';
import 'package:wojac_app/cubits/home_cubit/home_cubit.dart';
import 'package:wojac_app/cubits/home_cubit/home_states.dart';
import 'package:wojac_app/utils/widgets/wojak_item.dart';
import '../../utils/app_styles.dart';
import '../../utils/widgets/Widget/Animation+Text.dart';
import 'list_card.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  List<String> imagesTest = [
    'assets/images/img.png',
    'assets/images/img (1).png',
    'assets/images/img2.png',
    'assets/images/pass.webp',
    'assets/images/Wojak_cropped.jpg'
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        builder: (context, state) {
          return ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: AppColors.ground,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Wojak Categories',
                          style: AppStyles.textStyle6sp),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListCard(),
                    Animation_Text(
                      text: 'Latest Wojaks',
                      asset: 'assets/images/4407-9024-fire-loop.riv',
                    ),
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
                            children: List.generate(
                              5,
                              (index) => WojakItem(image: imagesTest[index]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/widgets/custom_elevated_button.dart';

import '../../utils/app_colors.dart';
import '../HomeScreen/dialog/custom_dialog.dart';
import '../HomeScreen/Search/text_search.dart';
import '../HomeScreen/drop_menu/drop_menu.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Expanded(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 8.w > 1 ? 8.w : 1,
              ),
              const DropMenu(),
              SizedBox(
                width: 20.w > 1 ? 20.w : 1,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? AppColors.green
                              : AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: AppColors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 18.w > 1 ? 18.w : 1,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Top',
                      style: TextStyle(
                          color: _isHovering[1]
                              ? AppColors.green
                              : AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                          height: 2, width: 20, color: AppColors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 18.w > 1 ? 18.w : 1,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Favourite',
                      style: TextStyle(
                          color: _isHovering[2]
                              ? AppColors.green
                              : AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                          height: 2, width: 20, color: AppColors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15.w > 1 ? 15.w : 1,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                          color: _isHovering[3]
                              ? AppColors.green
                              : AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                          height: 2, width: 20, color: AppColors.white),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 130.w > 2 ? 130.w : 2,
                      height: 48.h > 10 ? 48.h : 10,
                      child: const TextSearch(),
                    ),
                    SizedBox(
                      width: 10.w > 1 ? 10.w : 1,
                    ),
                    SizedBox(
                      width: 40.w > 40 ? 40.w : 40,
                      height: 35.h > 35 ? 35.h : 35,
                      child: CustomElevateButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => const CustomDialog(),
                          );
                        },
                        backgroundColor: AppColors.white,
                        foregroundColor: AppColors.ground,
                        text: 'Share Your Work',
                      ),
                    ),
                    SizedBox(
                      width: 8.w > 1 ? 8.w : 1,
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}

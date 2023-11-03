import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../../utils/widgets/custom_elevated_button.dart';
import '../../../utils/widgets/custom_field.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)), //this right here
      child: SingleChildScrollView(
        child: SizedBox(
          width: 250.w > 500 ? 250.w : 500,
          height: 550.h > 500 ? 550.h : 500,
          child: Column(
            children: [
              SizedBox(
                height: 10.h > 10 ? 10.h : 10,
              ),
              Container(
                width: 150.w > 400 ? 150.w : 400, //not

                height: 290.h > 200 ? 290.h : 200,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/gallery.png',
                            height: 60,
                            width: 60,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Wojacgjbdgjbfgbj',
                            style: AppStyles.textStyle315bold,
                          ),
                          Row(
                            children: [
                              //Image.asset('assets/images/upload (1).png',height: 20,width: 20,),
                              const Icon(
                                IconlyLight.upload,
                                color: AppColors.green,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Upload Wojak',
                                  style: AppStyles.textStyle3spg,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h > 10 ? 10.h : 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 80.w > 200 ? 80.w : 200,
                        child: CustomField(
                          hintText: 'Title',
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          data: '',
                        ),
                      ),
                      SizedBox(
                        width: 50.w > 188 ? 50.w : 188,
                        child: CustomField(
                          hintText: 'Type',
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          data: '',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 80.w > 200 ? 80.w : 200,
                          child: CustomField(
                            hintText: 'Tags',
                            keyboardType: TextInputType.text,
                            obscureText: false,
                            data: '',
                          )),
                      SizedBox(
                        width: 50.w > 188 ? 50.w : 188,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h > 50 ? 50.h : 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomElevateButton(
                          onPressed: () {},
                          backgroundColor: AppColors.ground,
                          foregroundColor: AppColors.white,
                          text: 'Cancel'),
                      SizedBox(
                        width: 5.w > 5 ? 5.w : 5,
                      ),
                      CustomElevateButton(
                        onPressed: () {},
                        backgroundColor: AppColors.green,
                        foregroundColor: AppColors.white,
                        text: 'Upload',
                      ),
                      SizedBox(
                        width: 5.w > 5 ? 5.w : 5,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

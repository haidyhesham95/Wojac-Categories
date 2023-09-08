import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class Custom_Image extends StatelessWidget {
   Custom_Image({super.key, required this.name});
final String name;
  @override
  Widget build(BuildContext context) {

    return   Expanded(
        child: Container(
          constraints: BoxConstraints(maxHeight: 620.h),
          child: Image.asset(
            name,
          ),
        ));
  }


}

import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class Image_I extends StatelessWidget {
   Image_I({super.key, required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: SizedBox(
          height: 900.h > 1000 ? 900.h : 1000,
          width: 100.w > 185 ? 100.w : 185,
          child: Image.asset(name)),
    );
  }


}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/utils/widgets/wojak_item.dart';

// ignore: must_be_immutable
class ListWojacFav extends StatelessWidget {
  ListWojacFav({super.key, this.onTap});
  final yourScrollController = ScrollController();
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 30.h,
        crossAxisSpacing: 4.w,
        children: List.generate(6, (index) => const WojakItem()),
      ),
    );
  }
}

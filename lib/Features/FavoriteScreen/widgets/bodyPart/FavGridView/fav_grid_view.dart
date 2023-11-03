import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/widgets/wojak_item.dart';

class FavGridView extends StatelessWidget {
  const FavGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Center(
                  child: Wrap(
                    spacing: 15.w,
                    runSpacing: 3.5.h > 10 ? 3.5.h : 10,
                    children: List.generate(5, (index) => const WojakItem()),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

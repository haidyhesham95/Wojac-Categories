import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/Widget/item.dart';

class FavGridView extends StatelessWidget {
  final Size size;
  const FavGridView({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  Center(
                    child: Wrap(
                      spacing: 15.w,
                      runSpacing: 3.5.h > 10? 3.5.h : 10,
                      children: List.generate(5, (index) => wojakItem(
                          size: size,
                         // image : images_test[index]
                      )),
                    ),
                  ),
                ],
              ),
          ),
        )
    );
  }
}

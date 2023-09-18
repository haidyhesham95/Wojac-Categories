import 'package:flutter/material.dart';

class WojacDetailsImage extends StatelessWidget {
  const WojacDetailsImage({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.5,
      constraints: BoxConstraints(
        minWidth: size.width * .42 < 460 ? size.width * .8 : size.width * .42,
        maxHeight: size.width < 620 ? size.width * .6 : size.height * 0.8,
        // maxHeight:
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset('assets/images/img.png', fit: BoxFit.contain),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class A_nimation extends StatelessWidget {
  const A_nimation({super.key, required this.asset});
 final String asset;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:45,left: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          RiveAnimation.asset(
            asset,
            useArtboardSize: true,

          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Divider(
          color: Colors.black,

          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
         Text('or'),
        Divider(
    color: Colors.black,

    thickness: 1,
    indent: 10,
    endIndent: 10,
    ),
      ],
    );
  }
}

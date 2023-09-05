import 'package:flutter/material.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1, // Added flex property
          child: Container(
            child: Divider(
              indent: 10.0,
              endIndent: 20.0,
              thickness: 1,
              color: Colors.black,
            ),
          ),
        ),
        Text('OR'),
        Flexible(
          flex: 1, // Added flex property
          child: Container(
            child: Divider(
              indent: 10.0,
              endIndent: 20.0,
              thickness: 1,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

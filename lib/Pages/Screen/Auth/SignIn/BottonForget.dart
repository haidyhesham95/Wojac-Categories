import 'package:flutter/material.dart';

class ButtonForget extends StatelessWidget {
  const ButtonForget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
        },
        child: Text(
          'Forget Password ?',style: TextStyle(fontSize: 15,color: Colors.black),

        ));
  }
}

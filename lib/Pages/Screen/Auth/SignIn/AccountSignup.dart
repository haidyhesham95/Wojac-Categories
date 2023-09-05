import 'package:flutter/material.dart';

class AccountSignUp extends StatelessWidget {
  const AccountSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Don\'t have an account ?',style: TextStyle(
          fontSize: 18
        ),),

        MaterialButton(
            onPressed: (){

            },
            child: Text('Sign Up',
              ))
      ],
    );
  }
}
import 'package:flutter/material.dart';

import '../HomeScreen/Main-Screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (MediaQuery.of(context).size.width >= 640)
              Expanded(child: MainScreen()),
            //Expanded(child: _screens[_selectedIndex])
          ],
        ),
      ),
    );
  }
}

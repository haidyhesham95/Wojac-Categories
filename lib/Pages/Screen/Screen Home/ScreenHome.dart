import 'package:flutter/material.dart';

import '../Main-Screen.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

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

import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
// enum SampleItem { SignIn, Settings, privacy }
//
//
// class Drop_Menu extends StatefulWidget {
//   const Drop_Menu({super.key});
//
//   @override
//   State<Drop_Menu> createState() => _Drop_MenuState();
// }
//
// class _Drop_MenuState extends State<Drop_Menu> {
//   SampleItem? selectedMenu;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       CircleAvatar(
//         radius: 30,
//         backgroundImage: AssetImage(
//           'assets/images/Wojak_cropped.jpg',
//         ),
//
//         child: PopupMenuButton<SampleItem>(
//           initialValue: selectedMenu,
//           onSelected: (SampleItem item) {
//             setState(() {
//               selectedMenu = item;
//             });
//           },
//           itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
//
//              PopupMenuItem<SampleItem>(
//                onTap: (){
//                  Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => SignIn()),
//                        );
//                },
//               value: SampleItem.SignIn,
//               child: Text('Sign In'),
//             ),
//             const PopupMenuItem<SampleItem>(
//               value: SampleItem.Settings,
//               child: Text('Settings'),
//             ),
//             const PopupMenuItem<SampleItem>(
//               value: SampleItem.privacy,
//               child: Text('Privacy'),
//             ),
//           ],
//         ),
//       );
//
//   }
// }

class DropMenu extends StatefulWidget {
  const DropMenu({super.key});

  @override
  _DropMenuState createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {
  bool isVisible = false;

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          GestureDetector(
              onTap: toggleVisibility,
              child: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/images/Wojak_cropped.jpg',
                  ))),
          AnimatedContainer(
            padding: const EdgeInsets.only(top: 10),
            duration: const Duration(milliseconds: 300),
            height: isVisible ? 200.0 : 0.0,
            // Set the initial height to 0
            width: isVisible ? 100.0 : 0.0,
            child: Container(
              color: AppColors.green,
              child: const Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sign IN',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Sign IN',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Sign IN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}

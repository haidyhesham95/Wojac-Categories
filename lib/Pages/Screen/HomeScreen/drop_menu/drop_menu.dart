import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Screen/Auth/SignIn/SignIn.dart';
import 'package:wojac_app/const/Colors.dart';
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


class Drop_Menu extends StatefulWidget {
  @override
  _Drop_MenuState createState() => _Drop_MenuState();
}

class _Drop_MenuState extends State<Drop_Menu> {
  bool isVisible = false;

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Column(
          children: [
            GestureDetector(
                onTap: toggleVisibility,
                child:
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/Wojak_cropped.jpg',
                    ))
            ),
            AnimatedContainer(
              padding: EdgeInsets.only(top: 10),
              duration: Duration(milliseconds: 300),
              height: isVisible ? 200.0 : 0.0,
              // Set the initial height to 0
              width: isVisible?100.0:0.0,
              child: Container(
                color: kgreen,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
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
      ]
    );
  }
}

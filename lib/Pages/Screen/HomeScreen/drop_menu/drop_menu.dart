import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Screen/Auth/SignIn/SignIn.dart';
enum SampleItem { SignIn, Settings, privacy }


class Drop_Menu extends StatefulWidget {
  const Drop_Menu({super.key});

  @override
  State<Drop_Menu> createState() => _Drop_MenuState();
}

class _Drop_MenuState extends State<Drop_Menu> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return
      CircleAvatar(
        radius: 30,
        backgroundImage: const AssetImage(
          'assets/images/Wojak_cropped.jpg',
        ),

        child: PopupMenuButton<SampleItem>(
          initialValue: selectedMenu,
          onSelected: (SampleItem item) {
            setState(() {
              selectedMenu = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[

             PopupMenuItem<SampleItem>(
               onTap: (){
                 Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => SignIn()),
                       );
               },
              value: SampleItem.SignIn,
              child: const Text('Sign In'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.Settings,
              child: Text('Settings'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.privacy,
              child: Text('Privacy'),
            ),
          ],
        ),
      );

  }
}

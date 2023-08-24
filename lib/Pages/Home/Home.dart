import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Home/Centerd-View.dart';
import 'package:wojac_app/const/Responsive.dart';

import 'Drawer.dart';
import 'TopBar.dart';

class Home extends StatelessWidget {
   Home({super.key});


  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      endDrawer: CustomDarwer(),
      body:CenterdView(
        child: Column(
          children: [
            TopBar()
          ],

        ),
      )





    );
  }
}

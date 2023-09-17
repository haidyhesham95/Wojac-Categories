
import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Screen/FavoriteScreen/favoriteScreen.dart';
import 'package:wojac_app/Pages/Screen/Top_Screen/Top_Screen.dart';
import 'package:wojac_app/const/Colors.dart';

import 'com/topContButton.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        child: Row(
          children: [
            TopContButton(
              title: "Designer",
              backgroundColor: kgreen,
              onPressed: (){
                print("designer button clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) => TopScreen(),));
              },
            ),
            SizedBox(width: 10,),
            TopContButton(
              title: "Wojacs",
              onPressed: (){
                print("Wojacs button clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) => FavoriteScreen(),));
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:html';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

import 'ListCard.dart';
import 'ListWojakFavourit.dart';
import 'Search/TextSearch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      color: kGround,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextSearch(),
          Divider(
            height: 20,
            color: kColor
          ),
          SizedBox(height: 15,),
          Text(
            'Wojak Categories:',
           style: Styles.textStyle20,
          ),
          SizedBox(height: 20,),
          ListCard(),
          SizedBox(height: 20,),
          Text(
            'Some random wojaks:',
            style: Styles.textStyle20,
          ),
          SizedBox(height: 20,),
          ListWojacFav(),

        ],
      ),
    );

  }
}

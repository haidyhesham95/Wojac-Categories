import 'package:flutter/material.dart';
import 'dart:html';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

import '../Details/Details.dart';
import 'ListCard.dart';
import 'ListWojakFavourit.dart';
import 'Search/TextSearch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return

       Container(
        padding: const EdgeInsets.all(20),
        color: kGround,
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSearch(),
              Divider(
                height: 20,
                color: kWhite
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
              ListWojacFav(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details(

                        )),
                  );
                },
              ),

            ],
          ),
        ),

    );

  }
}

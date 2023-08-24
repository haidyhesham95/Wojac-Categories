import 'package:flutter/material.dart';
import 'dart:html';
import 'package:http/http.dart';
import 'package:wojac_app/Pages/Screen/Search/TextSearch.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    // return  Container(
    //     margin: const EdgeInsets.all(10),
    //     padding: const EdgeInsets.all(20),
    //     color: Colors.black12,
    //     child: ListView.builder(
    //      scrollDirection: Axis.horizontal,
    //       itemCount: 2,
    //       itemBuilder: (context,index){
    //        return Padding(
    //            padding: EdgeInsets.all(12),
    //          child: Container(
    //            height: 150,
    //            color: Colors.purple.shade300,
    //          ),
    //        );
    //
    //       },
    //
    //         ),
    //   );
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      color: kGround,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextSearch(),
          Divider(
            height: 20,
            color: Colors.black45,
          ),
          Text(
            'Wojak Categories:',
            style: Styles.textStyle25,
          ),

        ],
      ),
    );

  }
}

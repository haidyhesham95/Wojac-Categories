import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

class ImageTab extends StatelessWidget {
  const ImageTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/img (1).png',)
                )
              ),
            ),
          ),
          SizedBox(height: 18,),
          Text('WOJAK',
            style: Styles.textStyle18),
          SizedBox(height: 18,),


        ],
      ),
    );
  }
}

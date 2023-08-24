import'package:flutter/material.dart';

class TabObject extends StatelessWidget {
  const TabObject({super.key, required this.data, required this.name, });
final String name;
final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
              width: 30,
              child: Image.asset(name,)),
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 5),
            child: Text(data),
          )
        ],
      ),
    );
  }
}




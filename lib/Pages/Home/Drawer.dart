import 'package:flutter/material.dart';

class CustomDarwer extends StatelessWidget {
   CustomDarwer({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            UserAccountsDrawerHeader(
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assets/images/img.png'),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              currentAccountPicture:
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/images/img.png'),
              ),

              accountName: Text(
                'Haidy Hesham',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'hh7234699@yahoo.com',
                style: TextStyle(color: Colors.black),
              ),
            ),

            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(
                //     builder: (context)=>Home()));
              },
            ),

          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 12),
          child: Text(
            'Developed by : Haidy Hesham (2023)',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    ) ;
  }
}

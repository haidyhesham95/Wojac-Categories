import 'package:flutter/material.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';
import 'package:wojac_app/Pages/Screen/HomeScreen/HomeScreen.dart';
import 'package:wojac_app/const/Colors.dart';
import '../../Widget/TabObject.dart';
import 'Image-tab.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: VerticalTabs(
                  selectedTabBackgroundColor:  kgreen,
                  tabBackgroundColor: kGround,
                  indicatorColor: kgreen,
                  tabsWidth: size.height*0.3,

                  tabs: const [
                    Tab(
                      child:
                      ImageTab(),
                    ),
                    Tab(
                      child:
                      TabObject(
                        data: 'Community',
                        name: 'assets/images/community.png',

                      ),
                    ),
                    Tab(
                      child:
                      TabObject(
                        data: 'Top',
                        name: 'assets/images/top.png',

                      ),
                    ),
                    Tab(
                      child:
                      TabObject(
                        data: 'Profile',
                        name: 'assets/images/profile.png',


                      ),
                    ),
                    Tab(
                      child:
                      TabObject(
                        data: 'About',
                        name: 'assets/images/about.png',

                      ),
                    ),



                  ],
                  contents: [

                    HomeScreen(),
                    tabsContent('Wojak'),
                    tabsContent('Wojak'),
                    tabsContent('Wojak'),
                    tabsContent('Wojak'),


                ],

                )
            )
          ],
        ),
      ),

    );
  }
}
Widget tabsContent(String caption, [String description = '']) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(20),
    color: Colors.black12,
    child: Column(
      children: <Widget>[
        Text(
          caption,
          style: const TextStyle(fontSize: 25),
        ),
        const Divider(
          height: 20,
          color: Colors.black45,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 15, color: Colors.black87),
        ),
      ],
    ),
  );
}

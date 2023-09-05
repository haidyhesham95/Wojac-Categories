import 'package:flutter/material.dart';
import 'package:wojac_app/Pages/Screen/HomeScreen/HomeScreen.dart';
import 'package:wojac_app/const/Colors.dart';

import '../Screen/HomeScreen/Search/TextSearch.dart';

class TopBarContents extends StatefulWidget {

  TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: kgreen,
        child: Padding(
          padding: const EdgeInsets.only(top: 15,bottom: 10),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: screenSize.width/15,),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png',),
                ),
                SizedBox(width: screenSize.width / 25),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[0] = true
                          : _isHovering[0] = false;
                    });
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen(

                          )),
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            color: _isHovering[0]
                                ? kgreen
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[0],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: kWhite,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 25),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[1] = true
                          : _isHovering[1] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Top',
                        style: TextStyle(
                            color: _isHovering[1]
                                ? kgreen
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[1],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: kWhite
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 25),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[2] = true
                          : _isHovering[2] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Community',
                        style: TextStyle(
                            color: _isHovering[2]
                                ? kgreen
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[2],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: kWhite
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 25),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[3] = true
                          : _isHovering[3] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: _isHovering[3]
                                ? kgreen
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[3],
                        child: Container(
                          height: 2,
                          width: 20,
                          color:kWhite
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 25),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[4] = true
                          : _isHovering[4] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                            color: _isHovering[4]
                                ? kgreen
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[4],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: kWhite,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 25),
                Container(
                  height: 50,
                  width: 450,
                  child: TextSearch(),
                ),

              ],
            ),
          ),
        ),

      );
    //);
  }
}

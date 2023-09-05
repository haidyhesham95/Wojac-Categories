import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: kWhite,
              width: 0.1.w
            )
          )
        ),
        child: Padding(
          padding:  EdgeInsets.only(
              top: 15.h,
              bottom: 10.h
          ),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenSize.width/15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png',),
                ),
                SizedBox(
                    width: screenSize.width / 25),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[0] = true
                          : _isHovering[0] = false;
                    });
                  },
                  onTap: () {
                  // using state management make the body in the home screen (first screen) = home screen (that where the categories , etc...)
                  //  I SAID THE BODY (DON'T NAVIGATE ! )
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            color: _isHovering[0]
                                ? Colors.greenAccent
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    width: screenSize.width / 25),
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
                                ? Colors.greenAccent
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),


                    ],
                  ),
                ),
                SizedBox(
                    width: screenSize.width / 25),
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
                                ? Colors.greenAccent
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                    width: screenSize.width / 25),
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
                                ? Colors.greenAccent
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                    width: screenSize.width / 25),
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
                                ? Colors.greenAccent
                                : kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                    width: screenSize.width / 25),
                const Spacer(),
                Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: 3.5.w
                  ),
                  child: SizedBox(
                    height: 40.h,
                    width: 100.w,
                    child: const TextSearch(),
                  ),
                ),

              ],
            ),
          ),
        ),

      );
    //);
  }
}

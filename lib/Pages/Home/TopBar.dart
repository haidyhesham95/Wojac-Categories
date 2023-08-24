import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
   TopBar({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      color: Colors.white.withOpacity(0.3),
      child: Padding(
        padding: EdgeInsets.all(20),
        child:
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color:Colors.green.shade300, width: 1),
                    image:const DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                    )),
              ),
              SizedBox(width: size.width / 10),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          // color: _isHovering[0]
                          //     ? Color(0xFF077bd7)
                          //     : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      //visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 44,
                        color: Colors.green.shade300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: size.width / 20),

              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Top',
                      style: TextStyle(
                        // color: _isHovering[0]
                        //     ? Color(0xFF077bd7)
                        //     : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      //visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.green.shade300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: size.width / 20),

              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Community',
                      style: TextStyle(
                        // color: _isHovering[0]
                        //     ? Color(0xFF077bd7)
                        //     : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      //visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 80,
                        color: Colors.green.shade300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: size.width / 20),

              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                        // color: _isHovering[0]
                        //     ? Color(0xFF077bd7)
                        //     : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      //visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 48,
                        color: Colors.green.shade300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: size.width / 20),

              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        // color: _isHovering[0]
                        //     ? Color(0xFF077bd7)
                        //     : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      //visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 44,
                        color: Colors.green.shade300,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: size.width / 20),
              IconButton(

                onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
                  icon: Icon(
                Icons.menu,
              ),
              )



            ],
          ),
        ),

      ),

    );

  }
}

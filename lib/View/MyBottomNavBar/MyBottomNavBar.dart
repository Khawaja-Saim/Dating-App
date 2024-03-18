import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const/Colors.dart';
import '../Discover/Discover.dart';
import '../Favourites/Favourites.dart';
import '../Inbox/InBox.dart';
import '../MyProfile/MyProfile.dart';



class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;

  // Define your pages/screens here
  final List<Widget> _pages = [
    Discover(),
    Favourites(),
    Inbox(),
    MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          _pages[_currentIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 60,
              color: ColorValues.backgroundcolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavBarItem('Discover', 'assets/discover.svg', 0),
                  _buildNavBarItem('Favourite', 'assets/favourites.svg', 1),
                  SizedBox(width: 60), // Empty SizedBox for center space
                  _buildNavBarItem('Inbox', 'assets/inbox.svg', 2),
                  _buildNavBarItem('Profile', 'assets/profile_bb.svg', 3),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width*0.48,
            bottom: 13,
            child: GestureDetector(
              onTap: () {
                // Handle center button tap
                // setState(() {
                //   _currentIndex = 2; // Set the current index to the center button
                // });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorValues.pinkmain,
                    boxShadow: [
                      BoxShadow(
                        color: CupertinoColors.systemBlue.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 0.3,
                        offset: Offset(-2, 6), // Corrected line
                      )
                    ]
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

  Widget _buildNavBarItem(String label, String iconPath, int index) {
    return GestureDetector(
      onTap: () {
        // Handle item tap
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            height: 24,
            color:  ColorValues.pinkmain,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color:  ColorValues.pinkmain ,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}





import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/assets/asset.dart';
import 'package:flutter_application_1/constants/app_constants.dart';
import 'package:flutter_application_1/screens/profile/profile_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavyBar(
        items: [
          BottomNavyBarItem(
            activeColor: kPrimaryColor,
            icon: kHomeIcon,
            title: Text(
              "HOME",
              style: TextStyle(
                color: Colors.grey[300],
              ),
            ),
          ),
          BottomNavyBarItem(
            activeColor: kPrimaryColor,
            icon: kHomeIcon,
            title: Text(
              "BASKET",
              style: TextStyle(
                color: Colors.grey[300],
              ),
            ),
          ),
          BottomNavyBarItem(
            activeColor: kPrimaryColor,
            icon: kHomeIcon,
            title: Text(
              "PROFILE",
              style: TextStyle(
                color: Colors.grey[300],
              ),
            ),
          ),
        ],
        itemCornerRadius: 24,
        backgroundColor: kAccentColor,
        showElevation: true, // use this to remove appBar's elevation
        selectedIndex: _selectedIndex,

        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          if (index == 2) {
            //Go to ProfilePage
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          }
        }),
      ),
    );
  }
}

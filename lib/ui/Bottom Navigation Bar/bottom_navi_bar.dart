import 'package:blood_donation_app/Constant%20Data/app_colors.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../Home Page/home_page.dart';

class BottomNavigationBar1 extends StatefulWidget {
  BottomNavigationBar1({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavigationBar1State createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavBar(
      actionButton: CurvedActionBar(
        onTab: (value) {
          /// perform action here
          print(value);
        },
        activeIcon: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: ThemeColors.primaryColor, shape: BoxShape.circle),
          child: Image.asset(
            'images/bttommiddle.png',
            scale: 15,
          ),
        ),
        inActiveIcon: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: ThemeColors.primaryColor, shape: BoxShape.circle),
          child: Image.asset(
            'images/bttommiddle.png',
            scale: 15,
          ),
        ),
      ),
      activeColor: Colors.green,
      navBarBackgroundColor: Colors.white,
      inActiveColor: Colors.black45,
      appBarItems: [
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.home,
              color: ThemeColors.primaryColor,
            ),
            inActiveIcon: const Icon(
              Icons.home_outlined,
              color: ThemeColors.iconsColor,
            ),
            text: '.'),
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.search,
              color: ThemeColors.primaryColor,
            ),
            inActiveIcon: const Icon(
              Icons.search,
              color: ThemeColors.iconsColor,
            ),
            text: '.'),
        FABBottomAppBarItem(
            activeIcon: Image.asset(
              'images/3.png',
              height: 16.0,
              width: 26,
              color: ThemeColors.primaryColor,
            ),
            inActiveIcon: Image.asset(
              'images/3.png',
              height: 16.0,
              width: 26,
            ),
            text: '.'),
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.person,
              color: ThemeColors.primaryColor,
            ),
            inActiveIcon: const Icon(
              Icons.person_outline,
              color: ThemeColors.iconsColor,
            ),
            text: '.'),
      ],
      bodyItems: [
        const HomePage(),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
        ),
      ],
      actionBarView: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
      ),
    );
  }
}

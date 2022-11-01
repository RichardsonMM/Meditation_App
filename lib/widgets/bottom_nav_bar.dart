import 'package:flutter/material.dart';

import '../main.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            svgSrc: "assets/icons/calendar.svg",
            title: "Today",
            press: () {},
          ),
          BottomNavItem(
            svgSrc: "assets/icons/gym.svg",
            title: "All Exercices",
            press: () {},
            isActive: true,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "Settings",
            press: () {},
          ),
        ],
      ),
    );
  }
}

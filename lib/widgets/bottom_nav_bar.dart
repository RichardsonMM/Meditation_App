import 'package:flutter/material.dart';

import '../main.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool stateToday = false;
  bool stateAll = false;
  bool stateSettings = false;
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
            press: () {
              setState(() {
                stateToday = !stateToday;
              });
            },
            isActive_Today: stateToday,
            isActive_All: stateAll,
            isActive_Settings: stateSettings,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/gym.svg",
            title: "All Exercices",
            press: () {
              setState(() {
                stateAll = !stateAll;
              });
            },
            isActive_Today: stateToday,
            isActive_All: stateAll,
            isActive_Settings: stateSettings,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "Settings",
            press: () {
              setState(() {
                stateSettings = !stateSettings;
              });
            },
            isActive_Today: stateToday,
            isActive_All: stateAll,
            isActive_Settings: stateSettings,
          ),
        ],
      ),
    );
  }
}

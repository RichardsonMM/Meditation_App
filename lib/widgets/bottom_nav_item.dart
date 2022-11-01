import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavItem extends StatefulWidget {
  final String svgSrc;
  final String title;
  final VoidCallback press;
  final bool isActive_Today;
  final bool isActive_All;
  final bool isActive_Settings;
  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
    required this.isActive_Today,
    required this.isActive_All,
    required this.isActive_Settings,
  }) : super(key: key);

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(widget.svgSrc,
              color: widget.isActive_Today ? kActiveIconColor : kTextColor),
          Text(
            widget.title,
            style: TextStyle(
                color: widget.isActive_Today ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}

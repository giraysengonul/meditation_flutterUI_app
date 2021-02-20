import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final Function press;
  bool isActive;
  BottomNavItem({
    Key key,
    this.icon,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          icon,
          Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.deepPurpleAccent : Colors.black),
          ),
        ],
      ),
    );
  }
}

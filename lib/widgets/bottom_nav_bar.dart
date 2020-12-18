import 'package:flutter/material.dart';

//import '../main.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 5,
      ),
      height: 60,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            next: (Icons.calendar_today_sharp),
          ),
          BottomNavItem(
            title: "All Exercises",
            next: (Icons.work),
            isActive: true,
          ),
          BottomNavItem(
            title: "Settings",
            next: (Icons.settings),
          ),
        ],
      ),
    );
  }
}


class BottomNavItem extends StatelessWidget {

  final IconData next;
  final String title;
  final Function press;
  final bool isActive;

  const BottomNavItem({
    Key key, this.title, this.press, this.isActive = false, this.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(next, color: Colors.pink[100],),
          Text(
            title, 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
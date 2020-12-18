import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          icon: Icon(Icons.search),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
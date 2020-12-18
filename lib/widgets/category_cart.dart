import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final Function press;
  
  const CategoryCard({
    Key key, 
    this.title, this.image, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
          child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.grey[600],
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
              children: <Widget>[
                Spacer(),
                Image.asset(
                    image,
                    height: 120,
                    width: 200,
                ),
                Spacer(),
                Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 15),
                ),
              ],
          ),
            ),
                ),
        ),
      ),
    );
  }
}
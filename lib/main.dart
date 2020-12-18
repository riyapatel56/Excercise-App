import 'package:flutter/material.dart';
import 'package:meditation_app/screens/details_screen.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/category_cart.dart';
import 'package:meditation_app/widgets/search_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;// give us total height and width of our device
    return Scaffold(
      backgroundColor: Colors.pink[50],
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,//here the height of the container is 45% of our total height
            decoration: BoxDecoration(
              color: Colors.pink[500],//fdu
              /*image: DecorationImage(
                alignment: Alignment.bottomRight,
                image: AssetImage("assets/images/asd.png"),
              ),*/
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          //iconim: Icon(Icons.slideshow),
                        color: Colors.pink[300],
                        shape: BoxShape.circle,
                        ),
                      //child: Image.asset("assets/images/b.jpg"),
                    ),
                  ),
                  Text(
                    "Good Morning \nRiya",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Yoga",
                          image: "assets/images/y1.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Diet ",
                          image: "assets/images/c.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Meditation",
                          image: "assets/images/m2.png",
                          press: () {
                            //next page
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context){
                                  return DetailsScreen();
                                }
                              )
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Excercise",
                          image: "assets/images/exercise.png",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*class SearchBar extends StatelessWidget {
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
}*/


/*class BottomNavItem extends StatelessWidget {

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
}*/

/*class CategoryCard extends StatelessWidget {
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
              color: Colors.grey[500],
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
}*/
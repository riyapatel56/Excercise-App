import 'package:flutter/material.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/search_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.teal[100],
              image: DecorationImage(
                image: AssetImage("assets/images/m1.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
           child: Padding(
             padding: const EdgeInsets.symmetric(
               horizontal: 20.0,
             ),
             child: SingleChildScrollView(
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   SizedBox(
                     height: size.height * 0.05,
                   ),
                   Text(
                     "Meditation",
                      style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.w900),
                   ),
                   SizedBox(height: 10),
                   Text(
                     "5-10 Min Course",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                   ),
                   SizedBox(height: 10),
                   SizedBox(
                     width: size.width * .6,
                    child: Text(
                     "Live happier and healthier by learning the fundamentals of meditation and mindfullness",
                    ),
                   ),
                   SizedBox(
                     width: size.width * .5,
                     child: SearchBar()
                   ),
                   Wrap(
                     spacing: 20,
                     runSpacing: 20,
                     children: <Widget>[
                       SessionCard(
                         sessionNum: 1,
                         isDone: true,
                         press: () {},
                       ),
                       SessionCard(
                         sessionNum: 2,
                         press: () {},
                         //isDone: true,
                       ),
                       SessionCard(
                         sessionNum: 3,
                         press: () {},
                         //isDone: true,
                       ),
                       SessionCard(
                         sessionNum: 4,
                         press: () {},
                         //isDone: true,
                       ),
                       SessionCard(
                         sessionNum: 5,
                         press: () {},
                         //isDone: true,
                       ),
                       SessionCard(
                         sessionNum: 6,
                         press: () {},
                         //isDone: true,
                       ),
                     ],
                   ),
                   SizedBox(height: 20),
                   Text(
                     "Meditation",
                     style: Theme.of(context).textTheme.headline6.copyWith(
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.symmetric(vertical: 20),
                     padding: EdgeInsets.all(10),
                     height: 90,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(13),
                       boxShadow: [
                         BoxShadow(
                           offset: Offset(0, 17),
                           blurRadius: 23,
                           spreadRadius: -13,
                           color: Colors.grey[200],
                          )
                       ],
                     ),
                     child: Row(
                       children: <Widget>[
                         Image.asset("assets/images/m2.png"),
                         SizedBox(width: 20),
                         Expanded(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Text(
                                "Basic 2",
                                style: Theme.of(context).textTheme.subtitle1,
                               ),
                               Text(
                                 "Start your deepen you practice",
                                ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.all(10),
                           child: Icon(Icons.lock),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ),
          ),
        ],
      ),
      
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function press;

  const SessionCard({
    Key key, this.sessionNum, this.isDone = false, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraint.maxWidth / 2 - 10,
            //padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.grey[300],
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press, 
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          color: isDone ? Colors.cyan[600] : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.cyan[600]),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : Colors.cyan[600],
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Session $sessionNum",
                         style: Theme.of(context).textTheme.subtitle1, 
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
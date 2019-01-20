import 'package:flutter/material.dart';
import './PageOne.dart';
import './PageTwo.dart';
import './PageThree.dart';
import './PageFour.dart';

class HomePageView extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<HomePageView> {

  List<Widget> mypage =[PageOne() , PageTwo() , PageThree() , PageFour()];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(


        body: Column(
          children: <Widget>[
/*

            new Container(
              height: 200, color: Colors.black,
            ),

*/

            new Expanded(
              child:PageView.builder(
              itemBuilder: (context , position)  => mypage[position],
              itemCount: mypage.length,
              scrollDirection: Axis.horizontal,
                pageSnapping: true,
                physics: BouncingScrollPhysics(),
            ) ,),


          ],
        ),


      ),
    );
  }
}
import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        body: Container(
            color: Colors.amber,
            child: Center(
              child: Text("Page Three" , style: TextStyle(fontSize: 30 ,color: Colors.white),),
            )
        ),



      ),
    );
  }
}
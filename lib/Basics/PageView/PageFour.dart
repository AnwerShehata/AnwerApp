import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        body: Container(
            color: Colors.indigoAccent,
            child: Center(
              child: Text("Page Four" , style: TextStyle(fontSize: 30 ,color: Colors.white),),
            )
        ),




      ),
    );
  }
}
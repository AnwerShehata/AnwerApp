import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        body: Container(
          color: Colors.blue,
          child: Center(
            child: Text("Page Tow" , style: TextStyle(fontSize: 30 ,color: Colors.white),),
          )
        ),



      ),
    );
  }
}
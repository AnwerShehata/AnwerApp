import 'package:flutter/material.dart';

class TabBar_four extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TabBar_four> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      backgroundColor: Colors.amberAccent,

      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amber,
        title: new Text("Four"),),


    );
  }
}
import 'package:flutter/material.dart';

class TabBar_three extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TabBar_three> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.pink,

      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pinkAccent,
        title: new Text("Three"),),


    );
  }
}
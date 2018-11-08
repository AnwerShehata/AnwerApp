import 'package:flutter/material.dart';

class TabBar_one extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TabBar_one> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red,

    appBar: new AppBar(
    elevation: 0.0,
    backgroundColor: Colors.redAccent,
    title: new Text("one"),),

    );

  }
}
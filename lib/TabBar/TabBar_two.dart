import 'package:flutter/material.dart';

class TabBar_two extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TabBar_two> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,

      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.greenAccent,
        title: new Text("Two"),),


    );
  }
}
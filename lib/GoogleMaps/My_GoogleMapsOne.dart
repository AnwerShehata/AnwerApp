import 'package:flutter/material.dart';

class My_GoogleMapsOne extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_GoogleMapsOne> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        
        appBar: AppBar(
          title: Text("Google Maps Test One"),
          elevation: 0,
        ),


      ),
    );
  }
}
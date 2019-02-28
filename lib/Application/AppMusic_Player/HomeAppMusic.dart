import 'package:flutter/material.dart';
class HomeAppMusic extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<HomeAppMusic> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          title: Text("music player"),
          elevation: 0,
        ),



      ),
    );
  }
}
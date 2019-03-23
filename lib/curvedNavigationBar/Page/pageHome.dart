import 'package:flutter/material.dart';

class pageHome extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<pageHome> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        backgroundColor: Colors.white,


        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.home ,size: 100,),
                Text("Page Home")
              ],
            )
        ),




      ),
    );
  }
}
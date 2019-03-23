import 'package:flutter/material.dart';

class pagePrint extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<pagePrint> {
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
                Icon(Icons.print ,size: 100,),
                Text("Page Print")
              ],
            )
        ),


      ),
    );
  }
}
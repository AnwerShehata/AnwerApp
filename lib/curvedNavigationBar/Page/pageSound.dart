import 'package:flutter/material.dart';

class pageSound extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<pageSound> {
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
                Icon(Icons.volume_up ,size: 100,),
                Text("Page Sound")
              ],
            )
        ),




      ),
    );
  }
}
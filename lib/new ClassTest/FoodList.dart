import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        
        new Padding(padding: EdgeInsets.all(30) ,
          child: Center(child: Text("FoodList"),),
        )
        
      ],
    );
  }
}
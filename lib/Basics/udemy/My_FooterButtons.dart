import 'package:flutter/material.dart';

class My_FooterButtons extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_FooterButtons> {

  String _value = '';
  void _onClick(String value){
    setState(() {
      _value = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        
        
        persistentFooterButtons: <Widget>[
          new IconButton(icon: Icon(Icons.timer), onPressed: (){_onClick("Button 1");}),
          new IconButton(icon: Icon(Icons.people), onPressed: (){_onClick("Button 2");}),
          new IconButton(icon: Icon(Icons.map), onPressed: (){_onClick("Button 3");}),
        ],

        body: Center(child: Text(_value),),

      ),
    );
  }
}
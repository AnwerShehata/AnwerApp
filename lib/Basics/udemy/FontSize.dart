import 'package:flutter/material.dart';

class FontSize extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<FontSize> {

  double _value = 0.0;
  double fontsize ;
  void _setValue(double value){
    setState(() {
      _value = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 60,),
              Text("Value ${(_value * 100).round()}"),
              new Slider(value: _value, onChanged: _setValue),
              
              Text("welcome",style: TextStyle(fontSize:_value),)

            ],
          ),
        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';

class My_SlidersIndicators extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_SlidersIndicators> {


  double _value = 0.0;
  void _onChanged(double value){
    setState(() {
      _value = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(


        body: new Container(
          padding: EdgeInsets.all(30.0),
          child: new Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                
                new Slider(value: _value, onChanged: _onChanged),
                
                new Container(
                  padding: new EdgeInsets.all(30),
                  child: new LinearProgressIndicator(
                    value: _value,
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),


                new Container(
                  padding: new EdgeInsets.all(30),
                  child: new CircularProgressIndicator(
                    value: _value,
                  )
                ),
              ],
            ),
          ),
        ),


      ),
    );
  }
}
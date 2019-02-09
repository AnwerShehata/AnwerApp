import 'package:flutter/material.dart';

class My_Align extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Align> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          title: Text("Align"),
        ),

        body: Center(
          child: Container( 
            height: 300, width: 300, color: Colors.blueAccent,
            child: Align(alignment: Alignment.center,
                child: Text("Align",style: TextStyle(color: Colors.yellow , fontSize: 25),))
          ),
        ),



      ),
    );
  }
}
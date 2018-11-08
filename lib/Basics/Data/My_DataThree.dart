import 'package:flutter/material.dart';

class My_DataThree extends StatefulWidget {
  // هنا يتم تعريف المتغير الذي سوف يحمل القيمة التي تاتي من الكلاس الاخر
  final String value;

  My_DataThree({Key key, this.value}) : super(key: key);

  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DataThree> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        //-------------- App bar -----------------------------------------------------
        appBar: new AppBar(
          backgroundColor: Colors.red,
          elevation: 0.0,
          centerTitle: true,
          title: new Text(
            "Data Tree",
            style: new TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25.0,
                fontFamily: "Cairo",
                color: Colors.yellow),
          ),
        ),

        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("this is Title :-     ${widget.value}"),
              subtitle: new Text("this is Subtitle :-    ${widget.value}"),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class My_DataTwo extends StatefulWidget {
  final String nameButton;

  // ignore: undefined_named_parameter
  My_DataTwo({Key mkey, this.nameButton}) : super(key: mkey);

  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DataTwo> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        //-------------- App bar -----------------------------------------------------
        appBar: new AppBar(
          backgroundColor: Colors.green,
          elevation: 0.0,
          centerTitle: true,
          title: new Text(
            "Data Two2",
            style: new TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25.0,
                color: Colors.white),
          ),
        ),

        body: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/My_DataThree");
                },
                child: new Text("${widget.nameButton}"),
              ),
              new RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/My_DataThree");
                },
                child: new Text("Move  Three Page "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

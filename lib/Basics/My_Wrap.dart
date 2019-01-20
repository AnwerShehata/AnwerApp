import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';

class My_Wrap extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Wrap> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          title: Text("Wrap"),
          elevation: 0,
          centerTitle: true,
        ),


        body: Container(
          child: Wrap(
            children: <Widget>[
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              Text(" ما هيا وظيفة Weap " ) ,
              new RaisedButton(onPressed: (){} , child: Text("Text1")),
              Text("هنا تقوم باكمال الصف في الصف النتالي ")
            ],
          ),
        ),
      ),
    );
  }
}
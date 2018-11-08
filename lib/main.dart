import 'package:flutter/material.dart';
import 'package:anwerapp/Ui/My_Ui.dart';
import 'package:anwerapp/Ui/My_designLogin.dart';
import 'package:anwerapp/Ui/My_Orderpage.dart';
import 'package:anwerapp/Basics/My_ListBasics.dart';
import 'package:anwerapp/HomeMesterApp.dart';


void main() => runApp(new MyApp());
class MyApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new HomeMesterApp(),

      routes: {
        '/Basics' : (BuildContext context)=> My_ListBasics(),
      },

    );
  }
}                               
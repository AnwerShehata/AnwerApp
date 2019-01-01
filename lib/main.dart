import 'package:flutter/material.dart';
import 'package:anwerapp/HomeMesterApp.dart';
import './Firebase/StudentApp/ui/My_ListViewStudent.dart';


void main() => runApp(new MyApp());
class MyApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
//      home:  new HomeMesterApp(),
      home:  new My_ListViewStudent(),


    );
  }
}                               
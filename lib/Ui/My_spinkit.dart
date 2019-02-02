import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class My_spinkit extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_spinkit> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        backgroundColor: Colors.white,
        //رابط الاضافة
        //https://pub.dartlang.org/packages/flutter_spinkit#-readme-tab-

        body: Center(
          child: SpinKitChasingDots(color: Colors.red, size: 100,) ,
        ),


      ),
    );
  }
}
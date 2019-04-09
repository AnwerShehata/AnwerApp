import 'package:anwerapp/Basics/My_SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:anwerapp/HomeMesterApp.dart';
import './Application/CommerceApp/HomeCommerceApp.dart';
import 'package:anwerapp/Plugin/avatar_glow.dart';


  void main() => runApp(new MyApp());

  class MyApp extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<MyApp> {

    var roules = <String , WidgetBuilder>{
      "/homeapp" : (BuildContext Context) => HomeMesterApp(),
    };

    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        debugShowCheckedModeBanner: false,

        home: new My_SplashScreen(),
//        home: new SearchOne(),
//        home: new DisplayCourse(),


        routes: roules,
      );
    }
  }
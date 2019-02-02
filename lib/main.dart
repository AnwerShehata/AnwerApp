  import 'package:flutter/material.dart';
  import 'package:anwerapp/HomeMesterApp.dart';
  import './Basics/My_SplashScreen.dart';
  import './Basics/My_FloatingActionButton_unicorndial.dart';





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
         home:  new My_SplashScreen(),
//         home:  new My_FloatingActionButton_unicorndial(),


        routes: roules,
      );
    }
  }
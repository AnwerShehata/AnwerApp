  import 'package:flutter/material.dart';
  import 'package:anwerapp/HomeMesterApp.dart';
  import './Basics/My_SplashScreen.dart';
  import './Basics/udemy/FontSize.dart';
  import './Basics/udemy/My_DatePicker.dart';
  import './Basics/udemy/My_bottomNavigationBar2.dart';
  import './Basics/udemy/My_Chipskeyschildren.dart';
  import './Basics/udemy/My_SlidersIndicators.dart';
  import './Basics/udemy/My_PopupMenuButton.dart';
  import './Application/AppWhatsApp/homeWhatsApp.dart';
  import './Basics/My_url_launcher.dart';
  import './Application/AppMusic_Player/HomeAppMusic.dart';


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
        routes: roules,
      );
    }
  }
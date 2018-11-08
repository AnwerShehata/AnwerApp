import 'package:flutter/material.dart';
import 'package:anwerapp/TabBar/TabBar_one.dart' as  one;
import 'package:anwerapp/TabBar/TabBar_two.dart' as  two;
import 'package:anwerapp/TabBar/TabBar_three.dart' as  three;
import 'package:anwerapp/TabBar/TabBar_four.dart' as  four;


class My_TabBarView extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_TabBarView> with SingleTickerProviderStateMixin{

  // الدوال الخاصة بالتحكم فيTabBar  --------------------------------------
  TabController controller;
  @override
  void initState() {
    controller =new TabController(length: 4, vsync: this); // هنا يتم كتابه  عدد التي سوف تظهر   TabBar
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  // الدوال الخاصة بالتحكم فيTabBar  --------------------------------------


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        appBar:  new AppBar(
          centerTitle: true,
          elevation: 5.0,
          title: new Text("TabBar View"),
          // هنا اكواد تاب بار
          bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.comment ), text: "One",),
              new Tab(icon: new Icon(Icons.volume_up),text: "Two",),
              new Tab(icon: new Icon(Icons.hearing),text: "Three"),
              new Tab(icon: new Icon(Icons.hotel), text: "sleep",),
            ],
          ),

          //---
        ),



        // هنا يتم استدعاء الصفحات التم تظهر في كل تاب
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new one.TabBar_one(),
            new two.TabBar_two(),
            new three.TabBar_three(),
            new four.TabBar_four(),
          ],
        ),





      ),
    );
  }
}
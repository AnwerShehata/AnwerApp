import 'package:flutter/material.dart';
import 'package:anwerapp/TabBar/TabBar_one.dart' as  one;
import 'package:anwerapp/TabBar/TabBar_two.dart' as  two;
import 'package:anwerapp/TabBar/TabBar_three.dart' as  three;
import 'package:anwerapp/TabBar/TabBar_four.dart' as  four;
import 'package:anwerapp/Application/AppMovies/SectionMovies.dart' as Section;


class My_HomeMovies extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_HomeMovies> with SingleTickerProviderStateMixin{

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
          backgroundColor: Colors.purple.shade900,
          centerTitle: true,
          elevation: 3.0,
          title: new Text("تطبيق افلامي " , style: TextStyle(color: Colors.amber , fontWeight: FontWeight.w400 , fontSize: 27.0),),
          // هنا اكواد تاب بار
          bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(text: "الاقسام",),
              new Tab(text: "افلام عربي ",),
              new Tab(text: "افلام اكشن",),
              new Tab(text: "افلام رعب",),
            ],
          ),

          //---
        ),



        // هنا يتم استدعاء الصفحات التم تظهر في كل تاب
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new Section.SectionMovies(),
            new two.TabBar_two(),
            new three.TabBar_three(),
            new four.TabBar_four(),
          ],
        ),





      ),
    );
  }
}
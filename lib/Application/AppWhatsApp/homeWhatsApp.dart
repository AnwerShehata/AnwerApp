import 'package:flutter/material.dart';
import './Pages/call_screen.dart';
import './Pages/camera_screen.dart' ;
import './Pages/chat_screen.dart';
import './Pages/statue_scrren.dart';

class homeWhatsApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<homeWhatsApp> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xff047265),
        accentColor: new Color(0xff00a99d),
        fontFamily: "Cairo"
      ),
      home:  new Scaffold(

        //------------------AppBar --------------------------
        appBar: AppBar(
          title: new Text("whatsApp"),
          elevation: 0,
          centerTitle: true,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
            new IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
          ],
          bottom:  new TabBar(
            controller: _tabController,
              indicatorColor: Colors.white,
              isScrollable: false,
              tabs: <Widget>[
                new Tab(icon: Icon(Icons.camera_alt),),
                new Tab(text: "Chats"),
                new Tab(text: "Status"),
                new Tab(text: "Calls"),
              ]
          ),
        ),

        //------------------floatingActionButton --------------------------
        floatingActionButton: new FloatingActionButton(
            onPressed: () => print("Open chats"),
          child: new Icon(Icons.message ,color: Colors.white,),
        ),

        //------------------body --------------------------
        body: new TabBarView(
          controller: _tabController,
            children: <Widget>[
              new camera_screen(),
              new chat_screen(),
              new statue_scrren(),
              new call_screen(),
            ]
        ),






      ),
    );
  }
}
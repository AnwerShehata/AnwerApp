import 'package:flutter/material.dart';
import './My_Flexible.dart';
import './My_GridViewCount.dart';

class textFildenew extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<textFildenew> {

  final List<Tab> tabs = <Tab>[
    Tab(text: "Foo",),
    Tab(text: "Bar",),
    Tab(text: "App",),
    Tab(text: "xyz",),
  ];

  Color bgColors = Colors.blue ;

  final List<Widget> WidgetTab = <Widget>[
    new Container( color: Colors.teal[100],  child: Center(child: Text("Foo")), ),
    new Container( color: Colors.amber[100],  child: Center(child: Text("Bar")), ),
    new My_GridViewCount(),
    new Container( color: Colors.red[100],  child: Center(child: Text("xyz")), ),
  ];

  void _onTapApp(int val){
    setState(() {
      if(val == 0 ){
        bgColors = Colors.blue ;
      }else if(val == 1){
        bgColors = Colors.green;
      } else if(val == 2){
        bgColors = Colors.teal;
      }else if(val == 3){
        bgColors = Colors.deepPurple ;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:tabs.length,
      child: Scaffold(

        appBar: AppBar(
          title: Text("Default Tab Controller"),
          elevation: 0,
          backgroundColor: bgColors,
          centerTitle: true,
          bottom: TabBar(
            onTap: _onTapApp,
            isScrollable: false,
            tabs: tabs,
          ),
        ),

/*        appBar: AppBar(
          flexibleSpace: SafeArea(
              child: TabBar(
                onTap: _onTapApp,
                isScrollable: false,
                tabs: tabs,
              ),
          ),
          elevation: 0,
          backgroundColor: bgColors,
          centerTitle: true,
        ),*/

        body: TabBarView(
          children: WidgetTab
        ),

      ),
    );
  }
}

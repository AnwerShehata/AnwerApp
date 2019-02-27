import 'package:flutter/material.dart';
import 'package:anwerapp/TabBar/TabBar_one.dart' as  one;
import 'package:anwerapp/TabBar/TabBar_two.dart' as  two;
import 'package:anwerapp/TabBar/TabBar_three.dart' as  three;
import 'package:anwerapp/TabBar/TabBar_four.dart' as  four;


class My_TabBarViewTwo extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class Choice{
  final String title;
  final IconData icon;
  const Choice(this.title, this.icon);
}

class _BirdState extends State<My_TabBarViewTwo> with SingleTickerProviderStateMixin{

  TabController _controller;
  List<Choice> _Items = const<Choice>[
    const Choice("car", Icons.directions_car),
    const Choice("bike", Icons.directions_bike),
    const Choice("bus", Icons.directions_bus),
    const Choice("bus", Icons.directions_bus),
  ];

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length:_Items.length, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        appBar: new AppBar(
          title: Text("fsdf"),
          elevation: 0,
          bottom: new PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: new Theme(
                data: Theme.of(context).copyWith(accentColor: Colors.white),
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: new TabPageSelector(controller: _controller,),
                )),
          ),
        ),

        // هنا يتم استدعاء الصفحات التم تظهر في كل تاب
        body: new TabBarView(
          controller: _controller,
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
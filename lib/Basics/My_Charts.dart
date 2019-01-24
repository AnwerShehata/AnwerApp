import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class My_Charts extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Charts> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //---------------AppBar ------------------------------
        appBar: AppBar(
          title: Text("Charts"),
          elevation: 0,
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            IconButton(icon: Icon(FontAwesomeIcons.ioxhost), onPressed: (){}),
          ],
        ),

        body: Container(
          child: StaggeredGridView.count(
              crossAxisCount: 4,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5),
              )
            ],
            staggeredTiles: [

            ],
          ),
        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';


class My_ListViewBuilder extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ListViewBuilder> {

  var itemsList = ["a","b","c","d","f","g","h","i","j","k"];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        
        appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.purple,
          title: new Text("ListView Builder"),),
        
        body: ListView.builder(
          itemCount: itemsList.length,
            itemBuilder: (context, i){
              return Card(
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text(itemsList[i]),),
                ),);
            },
        ),



      ),
    );
  }
}
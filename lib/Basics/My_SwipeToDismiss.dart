import 'package:flutter/material.dart';

class My_SwipeToDismiss extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_SwipeToDismiss> {
  var list = List.generate(200, (i) => "Flutter $i");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        //---------- App Bar ---------------------------------------------------------
        appBar: new AppBar(
          title: new Text("Swipe To Dismiss"),
        ),

        //---------- Body ---------------------------------------------------------
        body: ListView(
          children: list.map((item) {
            return Dismissible(
              direction: DismissDirection.endToStart,

              background: Container(color: Colors.red,
                child: Align(alignment: Alignment.centerRight,
                  child: Icon(Icons.delete_sweep,size:30.0, color: Colors.white,),),
              ),

              onDismissed: (direction) {
                setState(() {
                  list.removeAt(list.indexOf(item));
                });
              },

              child: ListTile(
                leading: FlutterLogo(),
                title: new Text(item),
              ),
              key: Key(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}

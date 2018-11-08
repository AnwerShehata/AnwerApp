import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

final FirebaseDatabase database = FirebaseDatabase.instance;


class My_TestFirebase extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_TestFirebase> {

  void _incrementCounter() {
    database.reference().child("message").set({
      "firstname": "Anwer shehata new  ",
      "lastName": "dsfsdf",
      "Age"         : 015
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(fontFamily: "Cairo"),
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        // --------- App Bar -----------------------------------------------------
      appBar: new AppBar(
          title: new Text("Test Firebase"),
          elevation: 0.0,
          centerTitle: true,
        ),
        
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
          child: new Icon(Icons.cloud_done),
        ),



      ),
    );
  }
}

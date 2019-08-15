import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';

class My_Flexible extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Flexible> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          elevation: 0,
          title: Text("TextEditing"),
        ),


        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  //----------- يقوم بنفس الوظيفة الخاصة Expanded
                  new Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey)
                        ),
                        child: Text("Foo"),
                      )),

                  new Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey)
                        ),
                        child: Text("Bar"),
                      )),

                ],
              ),



            ],
          ),
        )





      ),
    );
  }
}
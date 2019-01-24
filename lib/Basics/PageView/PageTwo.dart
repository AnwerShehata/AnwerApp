import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageTwo extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(



          body: Container(
              color: Colors.blueAccent[400],

              child: ListView(
                children: <Widget>[

                  SizedBox(height: 100),
                  Icon(FontAwesomeIcons.medapps ,size: 300, color: Colors.white,),

                  SizedBox(height: 150),
                  Center(child: Text("Welcom to PageTwo" ,style: TextStyle(fontSize: 35 ,color: Colors.white),)),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(child: Text("Index number of initial slide. if  it is controlled by the widget itself,otherwise " ,textAlign: TextAlign.center,style: TextStyle(fontSize: 18 ,color: Colors.white),)),
                  ),


                ],
              )
          )



      ),
    );
  }
}
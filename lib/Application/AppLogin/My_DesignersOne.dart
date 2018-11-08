import 'package:flutter/material.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersOne.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersTwo.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersThree.dart';

class My_DesignersOne extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DesignersOne> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Container( height: 60.0 , width: 60.0,
                     decoration: new BoxDecoration(
                       borderRadius: BorderRadius.circular(50.0),
                       color: Colors.redAccent,
                    ),
                    child: new Icon(Icons.local_offer, color: Colors.white,),
                  ),

                  new Container(
                    height: 60.0 , width: 60.0,
                     margin: new EdgeInsets.only(right: 90.0,top: 50.0),
                     decoration: new BoxDecoration(
                       borderRadius: BorderRadius.circular(50.0),
                       color: Colors.green,
                    ),
                    child: new Icon(Icons.exit_to_app, color: Colors.white,),
                  ),

                  new Container(
                    height: 60.0 , width: 60.0,
                     margin: new EdgeInsets.only(left: 90.0,top: 50.0),
                     decoration: new BoxDecoration(
                       borderRadius: BorderRadius.circular(50.0),
                       color: Colors.deepPurpleAccent,
                    ),
                    child: new Icon(Icons.hotel, color: Colors.white,),
                  ),

                  new Container(
                    height: 60.0 , width: 60.0,
                     margin: new EdgeInsets.only(top: 100.0),
                     decoration: new BoxDecoration(
                       borderRadius: BorderRadius.circular(50.0),
                       color: Colors.amber,
                    ),
                    child: new Icon(Icons.gamepad, color: Colors.white,),
                  ),
                ],
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Text("Welcome", style: new TextStyle(fontSize: 30.0),),
                  )
                ],
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: new Container( alignment: Alignment.center,
                        height: 60.0,
                        child: new Text("Sign With Email" , style: new TextStyle(fontSize: 25.0 , color: Colors.green.shade900),),
                        decoration: BoxDecoration( color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ],
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container( height: 60.0,
                        child: RaisedButton(onPressed: (){ Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>My_DesignersTwo())); } ,
                          elevation: 0.0,
                          color: Colors.blueAccent,
                          child: Text("FaceBook" , style: new TextStyle(fontSize: 25.0 , color: Colors.white),),
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container( height: 60.0,
                        child: RaisedButton(onPressed: (){ Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>My_DesignersTwo())); } ,
                          elevation: 0.0,
                          color: Colors.red,
                          child: Text("Google" , style: new TextStyle(fontSize: 25.0 , color: Colors.white),),
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),




                ],
              )

            ],
          ),
        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersOne.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersTwo.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersThree.dart';

class My_DesignersTwo extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DesignersTwo> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        body: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Stack( alignment: Alignment.center,
                children: <Widget>[

                  new Container( height: 60.0,width: 60.0,
                    child: Icon(Icons.volume_up , color: Colors.white,),
                    decoration: BoxDecoration(color: Colors.red  , borderRadius: BorderRadius.circular(50.0)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 60.0 , right: 70.0),
                    child: new Container( height: 60.0, width: 60.0,
                      child: Icon(Icons.hearing , color: Colors.white,),
                      decoration: BoxDecoration(color: Colors.blueAccent , borderRadius: BorderRadius.circular(50.0)),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 60.0 , left: 70.0),
                    child: new Container( height: 60.0, width: 60.0,
                      child: Icon(Icons.headset , color: Colors.white,),
                      decoration: BoxDecoration(color: Colors.green , borderRadius: BorderRadius.circular(50.0)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 100.0 ),
                    child: new Container( height: 60.0, width: 60.0,
                      child: Icon(Icons.headset , color: Colors.white,),
                      decoration: BoxDecoration(color: Colors.amber , borderRadius: BorderRadius.circular(50.0)),
                    ),
                  ),


                ],
              ),

              new Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Text("Welcome Flutter"  , style: new TextStyle(fontSize: 30.0),),
                  )
                ],
              ),

              new Container(
                child: Column(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(right:30.0 , left: 30.0),
                      child: new TextField( cursorRadius: Radius.circular(30.0),
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
//                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          labelText: "User Name",
                          hintText: "User Name"
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right:30.0 , left: 30.0 , top: 10.0),
                      child: new TextField( cursorRadius: Radius.circular(30.0),
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock_outline),
//                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          labelText: "User Name",
                          hintText: "User Name"
                        ),
                      ),
                    ),


                  ],
                ),
              ),

              new Padding(padding: EdgeInsets.all(5.0)),

              new Container( padding: EdgeInsets.all(50.0),
                child: Row(
                  children: <Widget>[
                    
                    new Expanded(
                      child: Container(height: 60.0,
                        child: new RaisedButton(onPressed: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>My_DesignersThree()));} ,
                          color: Colors.green,
                          elevation: 0.0,
                          child: new Text("Login" , style: new TextStyle(fontSize: 25.0 , color: Colors.white),),
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                    
                    new Padding(padding: EdgeInsets.all(5.0)),
                    new Expanded(
                      child: Container( alignment: Alignment.bottomCenter,
                        child: Text("Complete App Design" , style: TextStyle(color: Colors.green.shade400 , fontSize: 15.0),),
                      ),
                    ),

                  ],
                ),
              )





            ],
          ),
        ),

      ),
    );
  }
}
import 'dart:async';
import 'package:flutter/material.dart';

class My_SplashScreen extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_SplashScreen> {

// هنا الكودSplash Screen  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3) ,()=> Navigator.pushReplacementNamed(context, "/homeapp"));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[


            new Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF8c0286), Color(0xFF250050)],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[


                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180, width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          gradient: LinearGradient(
                            colors: [Color(0xFF8c0286), Color(0xFF250050)],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                          ),
                        ),
                      ),

                      Positioned(
                        top: 10, bottom: 10, left: 10, right: 10,
                        child: Container(
                          height: 190, width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            gradient: LinearGradient(
                              colors: [Color(0xFF8c0286), Color(0xFF250050)],
                              begin: FractionalOffset.bottomCenter,
                              end: FractionalOffset.topCenter,
                            ),
                          ),
                          child: new Icon(Icons.blur_on, size: 100, color: Colors.amber,),
                        ),
                      ),

                    ],
                  ),

                  SizedBox(height: 20),
                  Text("Welcom To Example Flutter" , style: TextStyle(fontSize: 20 , color: Colors.white),)


                ],
              ),
            )

          ],
        ),
      ),
    );
  }



}
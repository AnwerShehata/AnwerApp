import 'package:flutter/material.dart';

class My_StackLayout extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_StackLayout> {

  String imag  = "https://cdn.pixabay.com/photo/2018/10/03/21/13/shock-headed-boletus-3722395_1280.jpg";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(


        body: Center(
          child: Container(

            child: new Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[

                new Container(
                  height: 300.0, width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

            Positioned(
              top: -40.0,
                  right: 30.0,
                  left:30.0,
                  child: new Container(
                    height: 100.0, width: 200.0,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                      borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [ BoxShadow(blurRadius: 5.0 , color: Colors.black.withOpacity(0.2))],
                    ),
                  ),
                ),

                Positioned(
                  left: -30.0,
                  child: new Container(
                    height: 60.0, width: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [ BoxShadow(blurRadius: 5.0 , color: Colors.black.withOpacity(0.2))],
                    ),
                  ),
                ),

           Positioned(
                  right: -30.0,
                  child: new Container(
                    height: 60.0, width: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [ BoxShadow(blurRadius: 5.0 , color: Colors.black.withOpacity(0.2))],
                    ),
                  ),
                ),

         Positioned(
                  bottom: -30.0,
                  child: new Container(
                    height: 60.0, width: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [ BoxShadow(blurRadius: 5.0 , color: Colors.black.withOpacity(0.2))],
                    ),
                  ),
                ),



              ],
            ),

          ),
        ),

      ),
    );
  }


}
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class avatar_glow extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<avatar_glow> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(


        appBar: AppBar(
          title: Text("Avatar Glow "),
        ),

        body: Center(
          child: AvatarGlow(
            glowColor: Colors.blue,
            endRadius: 90.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: Material(
              elevation: 4,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor:Colors.grey[100] ,
                child: Image.network('',height: 200,),
                radius: 50.0,
              ),
            ),
          )
        ),


      ),
    );
  }
}

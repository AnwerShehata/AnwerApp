import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class My_FloatingActionButton_unicorndial extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_FloatingActionButton_unicorndial> {
  String nameIcons = "";
  @override
  Widget build(BuildContext context) {

    var childButtons = List<UnicornButton>();
    //===================  هنا List الخاصة بالــButtons التي تظهر عند الضغط  ===============
    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
          mini: true,
          elevation: 2,
          backgroundColor: Colors.blueAccent,
          child: Icon(FontAwesomeIcons.facebookF),
          onPressed: () {_facebook();},
        )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
          mini: true,
          backgroundColor: Colors.green,
          elevation: 2,
          child: Icon(FontAwesomeIcons.whatsapp),
          onPressed: () {_whatsapp();},
        )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
          mini: true,
          elevation: 2,
          backgroundColor: Colors.purple,
          child: Icon(FontAwesomeIcons.viber),
          onPressed: () {_viber();},
        )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
          mini: true,
          elevation: 2,
          backgroundColor: Colors.blue,
          child: Icon(FontAwesomeIcons.vimeoV),
          onPressed: () {_vimeo();},
        )));
    //==============================================================


    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        appBar: AppBar(
          title: Text("Floating Action Button unicorndial " ,style: TextStyle(fontWeight: FontWeight.w300),),
          elevation: 0,
        ),

        floatingActionButton: UnicornDialer(
          hasBackground: true,
          orientation: UnicornOrientation.VERTICAL,
          parentButton: Icon(Icons.share),
          parentButtonBackground: Colors.pink.shade700,
          childButtons: childButtons,
        ),

        body: Center(
          child: Text(nameIcons,style: TextStyle(fontSize: 30),),
        ),


      ),
    );
  }

  void _facebook(){
    setState(() {
      nameIcons = "facebook";
    });}

  void _whatsapp(){
    setState(() {
      nameIcons = "whatsapp";
    });}

  void _vimeo(){
    setState(() {
      nameIcons = "vimeo";
    });}

  void _viber(){
    setState(() {
      nameIcons = "viber";
    });}


}
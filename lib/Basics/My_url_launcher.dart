import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../Tools/app_tools.dart';


class My_url_launcher extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_url_launcher> {

  void _showUrl(){
    _launch('https://www.pexels.com/search/Sheep/');
  }

  void _showEmail(){
    _launch('mailto:smith@example.org?subject=News&body=New%20plugin');
  }

  void _showSms(){
    _launch('sms:5550101234');
  }

  void _showTelephone(){
//    _launch('tel:+1 555 010 999');
    _launch("tel://21213123123");
  }

  void _launch(String urlString) async {
    if(await canLaunch(urlString)) {
      await launch(urlString);
    } else {
      throw 'Could not launch Url';
    }
  }






  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //------------AppBar -------------------------------
        appBar: AppBar(
          title: Text("url launcher"),
          elevation: 0,
        ),


        //------------body -----------------------------------
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[


                SizedBox(height: 100),
                my_FlatButtonIcon(
                    radiusButton: 10,
                    textButton: "URL Linke  ",  icon: FontAwesomeIcons.link,
                    onPressed: (){_showUrl();}
                ),

                SizedBox(height: 20),
                my_FlatButtonIcon(
                    radiusButton: 10,
                    textButton: "URL Email",  icon: FontAwesomeIcons.envelopeOpen,
                    onPressed: (){_showEmail();}
                ),

                SizedBox(height: 20),
                my_FlatButtonIcon(
                    radiusButton: 10,
                    textButton: "URL SMS",  icon: FontAwesomeIcons.comments,
                    onPressed: (){_showSms();}
                ),


                SizedBox(height: 20),
                my_FlatButtonIcon(
                  radiusButton: 10,
                  textButton: "URL Telephone",  icon: FontAwesomeIcons.phoneVolume,
                  onPressed: (){_showTelephone();} ,

                ),
              ],
            ),
          ),
        ),




      ),
    );
  }
}
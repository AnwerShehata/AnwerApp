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
    _launch('http://www.voidrealms.com');
  }

  void _showEmail(){
    _launch('mailto:bcairns@voidrealms.com');
  }

  void _showSms(){
    _launch('sms:999-999-9999');
  }

  void _showTelephone(){
    _launch('tel:999-999-9999');
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
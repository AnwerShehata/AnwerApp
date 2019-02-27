import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';
import 'dart:io';
import 'package:anwerapp/Tools/app_tools.dart';

class My_Notification extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Notification> {

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  
  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android= new AndroidInitializationSettings('@mipmap/ic_launcher');
    var ios = new IOSInitializationSettings();
    var initSettings = new InitializationSettings(android, ios);
    flutterLocalNotificationsPlugin.initialize(
        initSettings, onSelectNotification: selectNotification );
  }

  Future selectNotification(String payload){
    print(" print paylod :$payload ");
    showDialog(context: context , builder: (_)=> AlertDialog(
      title: new Text("selectNotification"),
      content: new Text('$payload'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //-------------AppBar-------------------------
        appBar: AppBar(
          title: Text(" Notification App "),
          centerTitle: true,
          elevation: 0,
        ),

        //-------------Body-------------------------
        body: ListView(
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                SizedBox(height: 100),
                Text("you have pushed the button this many times"),
                SizedBox(height: 10),
                new RaisedButton(onPressed: _showNotification , child: Text('Click my'),)

              ],
            )
          ],
        ),




      ),
    );
  }

  _showNotification()async{
    var android = new AndroidNotificationDetails(
        'channelId', 'channelName', 'channelDescription',
      priority: Priority.High, importance: Importance.Max);

    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(
        0, 'title Anwer',"body shehata",platform,payload:  'this is my Name ');
  }

}
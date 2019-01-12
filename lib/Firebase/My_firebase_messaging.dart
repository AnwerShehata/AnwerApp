import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NameClass extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<NameClass> {

  FirebaseMessaging messaging = FirebaseMessaging();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    messaging.configure(
      onLaunch: (Map<String , dynamic> event){},
      onMessage: (Map<String , dynamic> event){},
      onResume: (Map<String , dynamic> event){},
    );

    messaging.requestNotificationPermissions(IosNotificationSettings(
      sound: true,
      badge: true,
      alert: true
    ));

    messaging.getToken().then((msg){});

  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:  new Scaffold(



      ),
    );
  }
}
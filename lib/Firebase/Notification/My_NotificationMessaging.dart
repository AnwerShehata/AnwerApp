import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class My_NotificationMessaging extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_NotificationMessaging> {

  var mymap =  {};
  var title = '';
  var body = {};
  var mytoken = "";

  FirebaseMessaging firebaseMessaging = new FirebaseMessaging();
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin= new FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    var android = new AndroidInitializationSettings('mipmap/ic_launcher');
    var ios =IOSInitializationSettings();
    var platform  = new InitializationSettings(android, ios);
    flutterLocalNotificationsPlugin.initialize(platform);

    firebaseMessaging.configure(
      onLaunch:(Map<String , dynamic> msg){  print("inResume called ${(msg)}");  },
      onResume: (Map<String , dynamic> msg){ print("inResume called ${(msg)}"); },
      onMessage: (Map<String , dynamic> msg){ mymap = msg ; showNotification(msg);},
    );

    firebaseMessaging.requestNotificationPermissions(
      const IosNotificationSettings( sound: true,  alert: true, badge: true, ));

    firebaseMessaging.onIosSettingsRegistered.listen((IosNotificationSettings setting){
      print('onIosSettingsRegistered');
    });

    firebaseMessaging.getToken().then((token){
      update(token);
    });
  }

  showNotification(msg)async{
    var android = new AndroidNotificationDetails('1', 'channelName', 'channelDescription');
    var iOS = new IOSNotificationDetails();
    var platform  =new NotificationDetails(android, iOS);

    msg.forEach((k , v){
      title = k;
      body = v;
      setState(() {

      });
    });
    await flutterLocalNotificationsPlugin.show(0, "${body.keys}", "${body.values}", platform);
  }


  update(String token){
    print(token);
    DatabaseReference databaseReference = FirebaseDatabase().reference();
    databaseReference.child("fcm_token/$token").set({"token" :token});
    mytoken = token;
    setState(() {

    });
  }




  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          title: Text("Notification Messaging"),
          centerTitle: true,
          elevation: 0,
        ),


        body: ListView(
          children: <Widget>[

            
            new Text(" you have pushed th button this many times"),
            new Text("$mytoken"),

            
          ],
        ),


      ),
    );
  }
}
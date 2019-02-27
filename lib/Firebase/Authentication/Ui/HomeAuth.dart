import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './My_loginpage.dart';


class HomeAuth extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<HomeAuth> {

  // === هنا جلب معلومات المستخدمة وعرضها في صفحة البروفايل الخاصة به
  String _name = "";
  String _uid = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.currentUser().then((user){
      _name = user.email;
      _uid = user.uid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //---------AppBar------------------------
        appBar: AppBar(
          title: Text("Home Auth"),
        ),



        //--------------Body--------------------
        body: ListView(
          children: <Widget>[

            SizedBox(height: 30),

            Center(child: new Text("Email : ${_name}" , style: TextStyle(fontSize: 20),)),
            Center(child: new Text("Pass : ${_uid}" , style: TextStyle(fontSize: 20),)),

            SizedBox(height: 30),
            my_Button(textButton: "LogOut" ,horizontal: 100, radiusButton: 10,
                onBtnclicked: (){
              FirebaseAuth.instance.signOut().then((value){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> My_loginpage()));
              }).catchError((e){print(e);});
       })

          ],
        ),




      ),
    );
  }
}
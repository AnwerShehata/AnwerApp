import 'package:anwerapp/Application/CommerceApp/HomeCommerceApp.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:anwerapp/Tools/app_tools.dart';
import './Firebase_ListView.dart';



class PageLogin extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<PageLogin> {

  GoogleSignIn _googleSignIn = GoogleSignIn();
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  FirebaseUser firebaseUser;
  SharedPreferences preferences ;

  // تسجيل الدخول باستخدام جوجل========
  void _SignIn(){
    _googleSignIn.signIn().then((value){
      value.authentication.then((googleKey){_firebaseAuth.signInWithGoogle(
          idToken: googleKey.idToken,
          accessToken: googleKey.accessToken)
          .then((user) {
            // هنا بعد الانتهاء من عمليت تسجيل الدخول سوف يتم الانتقال الي الصفحة التالية
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext  context) => new Firebase_ListView(
       user: user,googleSignIn: _googleSignIn,
     )));
      }).catchError((e){});
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.purple),
      home:  new Scaffold(

        //------------------AppBar---------------------------
        appBar: AppBar(
          title: Text("Firebase CRUD"),
          elevation: 0,
        ),

        //------------------Body---------------------------
     body: Center(
       child:Container(
         child: Column(
           children: <Widget>[

             SizedBox(height: 100,),
             Icon(FontAwesomeIcons.userPlus ,size: 100, color: Colors.blueGrey,),
             SizedBox(height: 30,),

             my_FlatButtonIcon(textButton: "Login with Google",icon: FontAwesomeIcons.google ,
                 colorIcon: Colors.red ,radiusButton: 10,
               onPressed: (){_SignIn();},
             ),

           ],
         ),
       ),
     ),



      ),
    );
  }
}


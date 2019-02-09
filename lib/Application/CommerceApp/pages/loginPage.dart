import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../componets/StyleApp.dart';
import 'package:anwerapp/Tools/app_tools.dart';



import '../HomeCommerceApp.dart';

class loginPage extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<loginPage> {

  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth =FirebaseAuth.instance;
  FirebaseUser firebaseUser;
  SharedPreferences preferences ;
  bool loading = false ;
  bool isLogedin = false ;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }

  // اذا كانت المستخدم قام بتسجيل الدخول من قبل انتقال الي الصفحة الرئيسية اثناء تشغيل التطبيق
  //واذا كان المستخدم لا يقوم بعمليت تسجيل الدخول سوف تظهر صفحة Login في البداية
  void isSignedIn()async {
    setState(() {
      loading = true;
    });
    preferences = await SharedPreferences.getInstance();
    isLogedin =await googleSignIn.isSignedIn();
    if(isLogedin == true){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeCommerceApp()));
    }
    setState(() {
      loading = false;
    });
  }

  // تسجيل الدخول باستخدام جوجل========
  Future handleSignIn()async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      loading = true;
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;
    firebaseUser  = await firebaseAuth.signInWithGoogle(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    if(firebaseUser != null){
      final QuerySnapshot result  =await Firestore.instance
      .collection("Users").where("id",isEqualTo:firebaseUser.uid).getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      if(documents.length ==0){
        Firestore.instance.collection("Users").document(firebaseUser.uid).setData({
          "id" : firebaseUser.uid,
          "email" : firebaseUser.email,
          "userName" : firebaseUser.displayName,
          "phone" : firebaseUser.phoneNumber,
          "profilepicture" : firebaseUser.photoUrl
        });
        await preferences.setString("id", firebaseUser.uid);
        await preferences.setString("userName", firebaseUser.displayName);
        await preferences.setString("photoUrl", firebaseUser.photoUrl);
      }else{
        await preferences.setString("id", documents[0]["id"]);
        await preferences.setString("userName", documents[0]["userName"]);
        await preferences.setString("photoUrl", documents[0]["photoUrl"]);
      }
      // هنا بعد الانتهاء من عمليت تسجيل الدخول سوف يتم الانتقال الي الصفحة التالية
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeCommerceApp()));
      setState(() {
        loading = false;
      });
    }else{
    }

  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //----------------- AppBar--------------
        appBar: AppBar(
          title: Text("Login"),
          elevation: 0,
          backgroundColor: colorApp_pink,
        ),

       body: Container(
         child: Center(child:my_FlatButton(
           horizontal: 80,
           textButton: "Login with Google",
           colorRadius: Colors.red,radiusButton: 10,
           colorText: Colors.red,
           onPressed: (){handleSignIn();}
         )),
       ),



      ),
    );
  }
}
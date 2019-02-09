import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  void isSignedIn()async {
    setState(() {
      loading = true;
    });
    preferences = await SharedPreferences.getInstance();
    isLogedin =await googleSignIn.isSignedIn();
    if(isLogedin == true){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeCommerceApp(
        user: firebaseUser,
        googleSignIn: googleSignIn,
      )));
    }
    setState(() {
      loading = false;
    });
  }

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
          "userName" : firebaseUser.displayName,
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
      Fluttertoast.showToast(msg: "Login was Successful");
      setState(() {
        loading = false;
      });
    }else{
    }

  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:  new Scaffold(

        body: Stack(
          children: <Widget>[
            
            Center(
              child: FlatButton(onPressed: (){handleSignIn();}, child: Text("Sign in / Sign up with google")),
            ),
            
            Visibility(
              visible:  loading ?? true,
                child: Container(
                  color: Colors.white.withOpacity(0.7),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                )
            )
            
          ],
        ),



      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


class My_GoogleSignin extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_GoogleSignin> {




  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  // دالة تسجيل الدخول بواسطة الجيميل
  Future<FirebaseUser> _signIn()async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA =await googleSignInAccount.authentication;

    FirebaseUser user =await _auth.signInWithGoogle(
        idToken: gSA.idToken,
        accessToken: gSA.accessToken);

    print("User Name : ${user.displayName}");
    return user;
  }

  // دالة تسجيل الخروج
  void _signOut(){
    googleSignIn.signOut();
    print("User Signed Out");
  }
  //--------------



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        //------- AppBar----------------------------------
        appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: new Text("Google SignIN"),),


        //------- Body----------------------------------
        body: new ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
          children: <Widget>[

            // رز تسجيل الدخول  ========
            new RaisedButton(
              elevation: 0.0,
              color: Colors.redAccent,
              child: new Text("SignIn" , style: TextStyle(color: Colors.white , fontSize: 20.0),),
              onPressed: ()=>_signIn()
                  .then((FirebaseUser user)=> print(user))
                  .catchError((e)=>print(e)),
            ),

            // رز تسجيل الخروج  ========
            new RaisedButton(
                elevation: 0.0,
                color: Colors.lightBlue,
                child: new Text("SignOut" , style: TextStyle(color: Colors.white , fontSize: 20.0),),
                onPressed: (){ googleSignIn.signOut(); }
            ),



          ],
        ),



      ),
    );
  }
}
import 'package:anwerapp/Firebase/Authentication/Ui/HomeAuth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserToDatabase{

  addNewUser(user , context){
    FirebaseDatabase.instance.reference().child('users')
        .push().set({
      'email ' : user.email,
      'uid' : user.uid,
    }).then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeAuth()));
      }).catchError((e){
      print(e);
    });
  }

}

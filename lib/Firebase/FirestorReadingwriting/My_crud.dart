import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

class crudMedthods{
  bool isLoggedIn(){
    if(FirebaseAuth.instance.currentUser() != null){
      return true;
    }else { return false;
    }
  }

  //====  الدالة المسئولة عن اضافة البيانات
  Future<void> addData(carData) async {
    if (isLoggedIn()) {
      Firestore.instance.collection('testcrud').add(carData).catchError((e) {
        print(e);
      });

    } else {
      print('You need to be logged in');
    }
  }

  //====  الدالة المسئولة عن جلب البيانات
  getData() async {
    return await Firestore.instance.collection('testcrud').getDocuments();
  }

}


import 'package:flutter/material.dart';
import '../componets/StyleApp.dart';
import '../pages/Cart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class AnwerDrawer extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<AnwerDrawer> {

  final GoogleSignIn googleSignIn = new GoogleSignIn();
  FirebaseUser firebaseUser;

  @override
  Widget build(BuildContext context) {

    return new Drawer(
      child: new ListView(
        children: <Widget>[

          // Header Drawer =====================
          new UserAccountsDrawerHeader(
            accountName: Text(firebaseUser.displayName, style: TextStyle(color: Colors.black),),
            accountEmail: Text(firebaseUser.email , style: TextStyle(color: Colors.black),),
            decoration: BoxDecoration(
            ),

            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/08/05/00/12/people-2581913__480.jpg"),
              ),),),

          // Body Drawer =====================
          ListTile(
            title: new Text("Home Page "),
            leading: new Icon(Icons.home,color: colorApp_pink),
          ),


          ListTile(
            title: new Text("My Account"),
            leading: new Icon(Icons.supervisor_account,color: colorApp_pink),
          ),

          ListTile(
            title: new Text("My Orders "),
            leading: new Icon(Icons.shopping_basket,color: colorApp_pink),
          ),

          ListTile(
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Cart()));},
            title: new Text("Shopping Cart"),
            leading: new Icon(Icons.shopping_cart,color: colorApp_pink),
          ),

          ListTile(
            title: new Text("Favourites"),
            leading: new Icon(Icons.favorite_border,color: colorApp_pink),
          ),

          new Divider(),
          ListTile(
            title: new Text("Settings"),
            leading: new Icon(Icons.settings,color: Colors.blueAccent),
          ),

          ListTile(
            title: new Text("About "),
            leading: new Icon(Icons.announcement,color: Colors.green),
          ),


        ],
      ),
    );



  }
}
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './componets/ListHorizontalShopingApp.dart';
import './componets/AnwerDrawer.dart';
import 'package:anwerapp/Tools/app_tools.dart';
import './componets/products.dart';
import './componets/StyleApp.dart';
import '../CommerceApp/pages/Cart.dart';

class HomeCommerceApp extends StatefulWidget {
  final FirebaseUser user;
  final GoogleSignIn googleSignIn;
  const HomeCommerceApp({Key key, this.user, this.googleSignIn}) : super(key: key);
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<HomeCommerceApp> {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        backgroundColor: Colors.white,


        //---------------- App Bar ---------------------------------------
        appBar: new AppBar(
          centerTitle: false,
          backgroundColor: colorApp_pink,
          elevation: 0.0,
          title: new Text("Shop App"),
          actions: <Widget>[
            new IconButton(icon:Icon(Icons.search), onPressed: (){}),
            new IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()),);})
          ],
        ),



        //---------------- Drawer ---------------------------------------
//        drawer: _buildDrawer(),
        drawer: AnwerDrawer(),


        //---------------- Body ---------------------------------------
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            //===== هنا الكود الخاص بالسلايد شو
            _buildCarouselSlide(),

            Padding(
              padding: const EdgeInsets.only(left: 20.0 ,top: 10.0),
              child: new Text("Categories " ,style: TextStyle(fontSize: 20.0),),
            ),

            //======= هنا كود الاقسام
            ListHorizontalShopingApp(),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: new Text("Recent Products " ,style: TextStyle(fontSize: 20.0),),
            ),


            Flexible(child: products()),


          ],
        ),



      ),
    );
  }

  Widget _buildCarouselSlide() {
    return new Container(
            height: 200.0,
              child: new Carousel(
                boxFit: BoxFit.cover,
                dotBgColor: Colors.black.withOpacity(0.0),
//                dotColor: Colors.yellow,
                images: [
                  new NetworkImage('https://cdn.pixabay.com/photo/2016/10/16/23/32/fashion-show-1746582__480.jpg'),
                  new NetworkImage('https://cdn.pixabay.com/photo/2018/01/11/09/52/three-3075752__480.jpg'),
                  new NetworkImage("https://cdn.pixabay.com/photo/2017/09/19/21/37/fashion-2766734__480.jpg"),
                  new NetworkImage("https://cdn.pixabay.com/photo/2016/10/16/23/33/fashion-show-1746590__480.jpg"),
                  new NetworkImage("https://cdn.pixabay.com/photo/2017/08/17/08/20/online-shopping-2650383__480.jpg"),
                ],
              )
          );
  }

}
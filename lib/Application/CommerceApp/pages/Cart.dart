import 'package:flutter/material.dart';
import '../componets/StyleApp.dart';
import '../HomeCommerceApp.dart';
import '../componets/cart_products.dart';

class Cart extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        //---------------AppBar----------------------
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: colorApp_pink,
          elevation: 0.0,
          title: new Text("Cart"),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeCommerceApp()),);},),
        ),


        //---------------bottomNavigationBar----------------------
        bottomNavigationBar: new Container(
          color: Colors.grey.shade200,
          height: 70,
          child: Row(
            children: <Widget>[

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Total : ",style: TextStyle(fontSize: 17 ,color: Colors.grey),),
                    Text("\$539",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              Expanded(child: MaterialButton(onPressed: (){},
              child: new Text("Check Out",style: TextStyle(color: Colors.white,fontSize: 25),),
                color: Colors.pinkAccent,
                height: 70,
              ))
            ],
          ),
        ),


        body: cart_products(),


      ),
    );
  }
}
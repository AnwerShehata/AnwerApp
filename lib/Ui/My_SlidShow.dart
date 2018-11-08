import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class My_SlidShow extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_SlidShow> {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        //---------------- App Bar ---------------------------------------
        appBar: new AppBar(
          centerTitle: false,
          backgroundColor: Colors.redAccent,
          elevation: 0.0,
          title: new Text("Slide Show "),
        ),



        body: ListView(
          children: <Widget>[

            new Container(
              height: 200.0,
                child: new Carousel(
                  boxFit: BoxFit.cover,
                  dotBgColor: Colors.black.withOpacity(0.4),
                  images: [
                    new NetworkImage('https://cdn.pixabay.com/photo/2016/11/22/19/08/blur-1850082__480.jpg'),
                    new NetworkImage('https://cdn.pixabay.com/photo/2015/10/12/15/18/clothing-store-984396__480.jpg'),
                    new NetworkImage("https://cdn.pixabay.com/photo/2016/11/22/21/57/apparel-1850804__480.jpg"),
                    new NetworkImage("https://cdn.pixabay.com/photo/2015/09/21/14/24/supermarket-949913__480.jpg"),
                    new NetworkImage("https://cdn.pixabay.com/photo/2015/09/18/11/35/vinyl-records-945396__480.jpg"),
                  ],
                )
            ),

          ],
        ),



      ),
    );
  }

}
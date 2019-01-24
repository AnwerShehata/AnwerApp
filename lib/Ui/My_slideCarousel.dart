import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class My_slideCarousel extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_slideCarousel> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          elevation: 0,
        ),

        body: Center(
          child: CarouselSlider(
            autoPlay: true,
            height: 230,
            reverse: false,
            distortion: true,
            interval: const Duration(seconds: 4),
            items: <Widget>[
              _buildContainer(context ,imagUrl: "https://cdn.pixabay.com/photo/2018/12/29/23/49/rays-3902368__480.jpg"),
              _buildContainer(context ,imagUrl: "https://cdn.pixabay.com/photo/2018/12/28/01/34/rum-3898745__480.jpg"),
              _buildContainer(context ,imagUrl: "https://cdn.pixabay.com/photo/2018/11/17/22/15/tree-3822149__480.jpg"),
              _buildContainer(context ,imagUrl: "https://cdn.pixabay.com/photo/2018/10/28/16/11/landscape-3779159__480.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildContainer(BuildContext context ,{String imagUrl}) {
    return new Container(
              width: MediaQuery.of(context).size.width-100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(imagUrl))
              ),
            );
  }
}
import 'package:flutter/material.dart';


class ListHorizontalShopingApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<ListHorizontalShopingApp> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 150.0,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          _buildContainer("anorak", "img/poster/pro1.jpg"),
          _buildContainer("apron", "img/poster/pro2.jpg"),
          _buildContainer("bikini", "img/poster/pro3.jpg"),
          _buildContainer("blazer", "img/poster/pro4.jpg"),
          _buildContainer("blouse", "img/poster/pro5.jpg"),
          _buildContainer("cardigan", "img/poster/pro6.jpg"),
          _buildContainer("gloves", "img/poster/pro7.jpg"),
          _buildContainer("jumper", "img/poster/pro8.jpg"),

        ],
      ),
    );
  }

  Container _buildContainer(String name , String image) {
    return new Container(
          margin: EdgeInsets.only(left: 30.0),
          width: 70.0,
          color:Colors.white,
          child: Column( crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset(image),
              new Text(name ,style: TextStyle(color: Colors.grey),)
            ],
          ),
        );
  }
}


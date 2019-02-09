import 'package:flutter/material.dart';


class ListHorizontalShopingApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<ListHorizontalShopingApp> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[


          _Sectionbuild(name: "anorak"  ,image: "img/poster/pro1.jpg" , onTap:(){}),
          _Sectionbuild(name: "apron"  ,image: "img/poster/pro2.jpg" , onTap:(){}),
          _Sectionbuild(name: "bikini"  ,image: "img/poster/pro3.jpg" , onTap:(){}),
          _Sectionbuild(name: "blazer"  ,image: "img/poster/pro4.jpg" , onTap:(){}),
          _Sectionbuild(name: "blouse"  ,image: "img/poster/pro5.jpg" , onTap:(){}),
          _Sectionbuild(name: "cardigan"  ,image: "img/poster/pro6.jpg" , onTap:(){}),
          _Sectionbuild(name: "gloves"  ,image: "img/poster/pro7.jpg" , onTap:(){}),
          _Sectionbuild(name: "jumper"  ,image: "img/poster/pro8.jpg" , onTap:(){}),


        ],
      ),
    );
  }

  GestureDetector _Sectionbuild({
    String name ,
    String image,
    GestureTapCallback onTap,
    }) {
    return GestureDetector(onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 30.0),
        width: 70.0,
        color:Colors.white,
        child: Column( crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset(image),
            new Text(name ,style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}


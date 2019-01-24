import 'package:flutter/material.dart';
import './PageOne.dart';
import './PageTwo.dart';
import './PageThree.dart';
import './PageFour.dart';

class HomePageView extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<HomePageView> {

  List<Widget> mypage = [PageOne(), PageTwo(), PageThree(), PageFour()];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(

        appBar: AppBar(
          title:Text("Page View" ,style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w300),),
          elevation: 0,
          backgroundColor: Colors.blueGrey[700],
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
        ),


        body: Column(
          children: <Widget>[

            new Expanded(
              child: PageView.builder(
                itemBuilder: (context, position) => mypage[position],
                itemCount: mypage.length,
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                physics: BouncingScrollPhysics(),
              ),),


          ],
        ),


      ),
    );
  }
}
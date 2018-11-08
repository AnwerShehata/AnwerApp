import 'package:flutter/material.dart';
import 'package:anwerapp/Basics/My_Images.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersOne.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersTwo.dart';
import 'package:anwerapp/Application/AppLogin/My_DesignersThree.dart';

class My_DesignersThree extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DesignersThree> {

  String NamePoster = "";
  String LinkePoster = "";
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,            // لاظهار باقي العناصر التي تم اختفائها
          fixedColor: Colors.red,
          currentIndex: _bottomNavIndex,
          onTap: (int index){
            setState(() {
              _bottomNavIndex = index;
            });
          },

          items: [

          new BottomNavigationBarItem(icon: new Icon
            (Icons.add_shopping_cart ),
              title: new Text("shopping")),

                    new BottomNavigationBarItem(icon: new Icon
            (Icons.add_shopping_cart ),
              title: new Text("shopping")),

                    new BottomNavigationBarItem(icon: new Icon
            (Icons.add_shopping_cart ),
              title: new Text("shopping")),

        ],

        ),


        //------ Body --------------------------------------------
        body: new ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10.0 , vertical: 5.0),
          children: <Widget>[

            //========== Heade ======================
            new Container(
              padding: EdgeInsets.only(top: 20.0),
//                color: Colors.blueGrey,
              child: new Column(
                children: <Widget>[

                  //========= Row Text  Exploer ============
                  Row(
                    children: <Widget>[
                      new Text("Exploer " , style: new TextStyle(fontSize: 30.0,), textAlign:TextAlign.left , ),
                    ],),
                  new Padding(padding: EdgeInsets.all(4.0)),


                  Row(
                    children: <Widget>[
                      buildExpanded2(),
                      new Padding(padding: EdgeInsets.only(right: 3.0)),
                      new Expanded(
                          child: new Container(height: 100.0,
                            child: Column(
                              children: <Widget>[
                                SectionExpanded("Classified",Icons.hearing,Mcolor: Colors.redAccent),
                                new Padding(padding: EdgeInsets.only(top: 3.0)),
                                SectionExpanded("Properties",Icons.headset,Mcolor: Colors.greenAccent.shade400),
                              ],
                            ),
                      )),
                      new Padding(padding: EdgeInsets.only(right: 3.0)),
                      new Expanded(
                          child: new Container(height: 100.0,
                            child: Column(
                              children: <Widget>[
                                SectionExpanded("Jobs",Icons.g_translate,Mcolor: Colors.amber),
                                new Padding(padding: EdgeInsets.only(top: 3.0)),
                                SectionExpanded("Service",Icons.print,Mcolor: Colors.green),
                              ],
                            ),
                      )),
                    ],
                  ),
                ],
              ),
            ),

            //========== Name Section one  ======================
            new Container(
              child: Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(10.0)),
                  // استدعاء دالة اسم القسم وزر المزيد
                  _NamePosteAllView("Animal Section"),
                  new Row(
                    children: <Widget>[
                      // استدعاء دالة صورة البوستر واسم البوستر
                      _ImgAndNamePoster("Animal Lion", "https://cache.albayan.ae/polopoly_fs/1.2823108.1484148560!/image/image.jpg"),
                      new Padding(padding: EdgeInsets.all(4.0)),
                      _ImgAndNamePoster("giraffe","http://img.burrard-lucas.com/kenya/full/giraffe.jpg"),
                      new Padding(padding: EdgeInsets.all(4.0)),
                      _ImgAndNamePoster("Lovely cat","https://img.youm7.com/ArticleImgs/2018/2/16/23607-حيوانات-أليفة-(1).jpg"),
                    ],
                  )
                ],
              ),
            ),

            new Container(
              child: Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(20.0)),
                  // استدعاء دالة اسم القسم وزر المزيد
                  _NamePosteAllView("Birds Section"),
                  new Row(
                    children: <Widget>[
                      // استدعاء دالة صورة البوستر واسم البوستر
                      _ImgAndNamePoster("asd", "https://cdn.pixabay.com/photo/2018/09/23/20/56/sparrow-3698507_1280.jpg"),
                      new Padding(padding: EdgeInsets.all(4.0)),
                      _ImgAndNamePoster("www","https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_1280.jpg"),
                      new Padding(padding: EdgeInsets.all(4.0)),
                      _ImgAndNamePoster("wewr","https://cdn.pixabay.com/photo/2016/11/18/12/14/owl-1834152_1280.jpg"),
                    ],
                  )
                ],
              ),
            ),




          ],
        ),


      ),
    );
  }







  // هذا الدالة تحتوي علي اسم الاقسم وزر المزيد
  Row _NamePosteAllView(String nameSection) {
    return new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Expanded(child: new Text(nameSection, style: new TextStyle(fontSize: 23.0 , color: Colors.red.shade900))),
                    new Expanded(child: new Text("View All.." , style: new TextStyle(color: Colors.green), textAlign: TextAlign.end,)),
                  ],
                );
  }

  // هذا الدالة تحتوي علي صورة البوستر و اسم البوستر
  Expanded _ImgAndNamePoster(String  NamePoster, String LinkePoster) {
    return new Expanded(
                  child: Container(
                    child: new Column(children: <Widget>[
                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Images(title: NamePoster, imgURL: LinkePoster,)),);},
                        child: new Container(
                          height: 150.0,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(20.0),
                            image: new DecorationImage(image: NetworkImage(LinkePoster),fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      new Text(NamePoster, style: new TextStyle(fontSize: 14.0),),
                    ],),
                  )
              );
  }

  // هذا الدالة تحتوي علي اسماء الاقسام
  Expanded buildExpanded2() {
    return new Expanded(
                          child: new Container(height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.redAccent , Colors.purple] ,)
                          
                        ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Icon(Icons.drive_eta , color: Colors.white,),
                                new Text("motor" , style: new TextStyle(color: Colors.white),)
                              ],
                            ),
                      ));
  }

  //==== Method Contener Header
  Expanded SectionExpanded(String name , IconData Micon ,{Color Mcolor:Colors.red} ) {
    return new Expanded(
    child: new Container(
      decoration: BoxDecoration(
        color: Mcolor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        new Icon(Micon, color: Colors.white,),
        new Padding(padding: EdgeInsets.only(right: 10.0)),
        new Text(name , style: new TextStyle(color: Colors.white),)
      ],),
    ));
}

}
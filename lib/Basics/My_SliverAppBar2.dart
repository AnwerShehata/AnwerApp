import 'package:flutter/material.dart';
import 'package:anwerapp/Basics/My_controller.dart' as  Mcontroller;

class My_SliverAppBar2 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_SliverAppBar2> {
  String img1 = "https://cdn.pixabay.com/photo/2017/02/19/16/01/mountaineer-2080138_1280.jpg";


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(

//        appBar: new AppBar(),


        // هذا الجزاء هو المسئول عن SliverAppBar ======================
        body: CustomScrollView(
          reverse: false,
          slivers: <Widget>[
            SliverAppBar(
              leading: new Icon(Icons.menu),
              expandedHeight: 300.0,                          // هنا يتم تحديد ارتفاع SliverAppBar
              pinned: true,                                             // هنا اذا كنت تريد اظهار AppBar بعد السحب
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Flutter App"),
                centerTitle: true,
                background: Image.network(img1 , fit: BoxFit.fill,),
              ),
            ),

            SliverFillRemaining(
              child: Container(
                child: Column(
                  children: <Widget>[

                    new Container(height: 85.0, color: Colors.redAccent,),

                  ],
                ),
              ),
            )


          ],
        ),

      ),
    );
  }
}

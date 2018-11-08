import 'package:flutter/material.dart';

class My_SliverAppBar extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_SliverAppBar> {
  String img1 = "https://cdn.pixabay.com/photo/2017/02/19/16/01/mountaineer-2080138_1280.jpg";
  String img2 ="https://cdn.pixabay.com/photo/2016/07/03/17/48/lost-places-1495150_1280.jpg";
  String img3 ="https://cdn.pixabay.com/photo/2017/08/02/00/16/people-2568954_1280.jpg";
  String img4 ="https://cdn.pixabay.com/photo/2018/04/20/22/18/factory-building-3337207_1280.jpg";
  String img5 ="https://www.emanprague.com/en/wp-content/uploads/2018/05/flutter_eman_blog.png";






  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(


        body: CustomScrollView(
          reverse: true,
          slivers: <Widget>[

            buildSliverAppBar,
            buildSliverAppBar,
            buildSliverAppBar,
            buildSliverAppBar,



         SliverFillRemaining(
           child: Container(
             color: Colors.white,
           ),
         )


         /*   SliverFixedExtentList(
              itemExtent: 250.0,
              delegate: SliverChildListDelegate([
                Card(color: Colors.redAccent,),
                Card(color: Colors.blueGrey,),
                Card(color: Colors.amber,),
                Card(color: Colors.blueAccent,),
              ]),
                )
*/

          ],
        ),

      ),
    );
  }

  SliverAppBar get buildSliverAppBar {
    return SliverAppBar(
            expandedHeight: 250.0,                          // هنا يتم تحديد ارتفاع SliverAppBar
            pinned: true,                                            // هنا اذا كنت تريد اظهار AppBar بعد السحب
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flutter App"),
              centerTitle: true,
              background: Image.network(img1 , fit: BoxFit.fill,),
            ),
          );
  }
}
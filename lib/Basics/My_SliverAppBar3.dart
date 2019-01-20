import 'package:flutter/material.dart';

class My_SliverAppBar3 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_SliverAppBar3> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              elevation: 0,
              floating: false,
              pinned: true,
              title: Text("anwer"),
              centerTitle: true,
              actions: <Widget>[
                Icon(Icons.search),
                Icon(Icons.volume_up),
              ],
              leading: Icon(Icons.dashboard),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network("https://cdn.pixabay.com/photo/2018/10/28/16/11/landscape-3779159__480.jpg",fit: BoxFit.cover,),
              ),
            ),
            SliverFillRemaining(
              child: new Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';



class My_WallpaperApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_WallpaperApp> {

  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> wallpapersList;
  CollectionReference collectionReference = Firestore.instance.collection("walpapers");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshots){
      setState(() {
        wallpapersList = datasnapshots.documents;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();

  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        // --------- App Bar -----------------------------------------------------
      appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: new Text("WallpaperApp"),),



        // --------- body -----------------------------------------------------

        body: wallpapersList != null?
        new StaggeredGridView.countBuilder(
          padding: const EdgeInsets.all(8.0),
            crossAxisCount: 4,
            itemCount: wallpapersList.length,
            staggeredTileBuilder: null,
          itemBuilder: (context ,i){
            String imgpath = wallpapersList[i].data['url'];
            return new Material(
              elevation: 8.0,
              borderRadius: new BorderRadius.circular(10.0),
              child: new InkWell(
                child: new Hero(tag: imgpath,
                    child: new FadeInImage(
                        placeholder: NetworkImage("https://cdn.pixabay.com/photo/2018/10/22/11/58/grass-3765172__480.jpg"),
                        fit: BoxFit.cover,
                        image: new NetworkImage(imgpath)
                    )),
              ),
            );
            },

          
          staggeredTileBuilder: (i) =>
          new StaggeredTile.count(2, i.isEven ? 2 : 3),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        )
            : new Center(
          child: new CircularProgressIndicator(),
        )
      )

    );

  }
}
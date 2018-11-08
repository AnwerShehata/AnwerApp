import 'package:flutter/material.dart';

class SectionMovies extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<SectionMovies> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.purple.shade900,

/*    appBar: new AppBar(
    elevation: 0.0,
    backgroundColor: Colors.redAccent,
    title: new Text("SectionMovies"),),*/

      body: ListView(
        children: <Widget>[

          new Container(
            child: InkWell(onTap: (){print(" مسلسلات رمضان 2019");},
              child: Stack(alignment: Alignment.bottomCenter,
                children: <Widget>[

                  new Container(
//                    height: 300.0,
                      color: Colors.amber,
                    child: Image.asset("img/poster/image1.jpg",fit: BoxFit.cover,)
                  ),

                  new Container(
                    padding: EdgeInsets.all(20.0),
//                  color: Colors.grey,
                    child: new Text(" مسلسلات رمضان 2019" , style: new TextStyle(color: Colors.white,fontSize: 24.0 , fontWeight: FontWeight.w500),),
                  )

                ],
              ),
            ),
          ),

          new Container(
            child: Stack(alignment: Alignment.bottomCenter,
              children: <Widget>[

                new Container(
//                  height: 200.0,
                    color: Colors.amber,
                  child: Image.asset("img/poster/image2.jpg",fit: BoxFit.cover,)
                ),

                new Container(
                  padding: EdgeInsets.all(20.0),
//                  color: Colors.grey,
                  child: new Text("افلام مصرية" , style: new TextStyle(color: Colors.white,fontSize: 24.0 , fontWeight: FontWeight.w500),),
                )

              ],
            ),
          ),

          new Container(
            child: Stack(alignment: Alignment.bottomCenter,
              children: <Widget>[

                new Container(
//                  height: 200.0,
                    color: Colors.amber,
                  child: Image.asset("img/poster/image1.jpg",fit: BoxFit.cover,)
                ),

                new Container(
                  padding: EdgeInsets.all(20.0),
//                  color: Colors.grey,
                  child: new Text(" مسلسلات رمضان 2019" , style: new TextStyle(color: Colors.white,fontSize: 24.0 , fontWeight: FontWeight.w500),),
                )

              ],
            ),
          ),

          new Container(
            child: Stack(alignment: Alignment.bottomCenter,
              children: <Widget>[

                new Container(
//                  height: 200.0,
                    color: Colors.amber,
                  child: Image.asset("img/poster/image1.jpg",fit: BoxFit.cover,)
                ),

                new Container(
                  padding: EdgeInsets.all(20.0),
//                  color: Colors.grey,
                  child: new Text(" مسلسلات رمضان 2019" , style: new TextStyle(color: Colors.white,fontSize: 24.0 , fontWeight: FontWeight.w500),),
                )

              ],
            ),
          ),

          new Container(
            child: Stack(alignment: Alignment.bottomCenter,
              children: <Widget>[

                new Container(
//                  height: 200.0,
                    color: Colors.amber,
                  child: Image.asset("img/poster/image1.jpg",fit: BoxFit.cover,)
                ),

                new Container(
                  padding: EdgeInsets.all(20.0),
//                  color: Colors.grey,
                  child: new Text(" مسلسلات رمضان 2019" , style: new TextStyle(color: Colors.white,fontSize: 24.0 , fontWeight: FontWeight.w500),),
                )

              ],
            ),
          ),

        ],
      ),

    );

  }
}
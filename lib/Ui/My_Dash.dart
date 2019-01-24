import 'package:flutter/material.dart';

class My_Dash extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Dash> {

  double mFontSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
//      theme: new ThemeData(fontFamily: "Cairo"),
      home:  Container(
        child: Stack(
          children: <Widget>[
            Scaffold(
              backgroundColor: Colors.grey.shade200,
              //-------------- Body -------------------------------
              body: ListView(
                children: <Widget>[
                  new Center(
                    child: Container(
                      child: Column(
                        children: <Widget>[

                          // هنا كود Header
                          new Container(
                            child: Stack(
                              alignment: Alignment.center,
                              overflow: Overflow.visible,
                              children: <Widget>[

                                new Container(
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFee8675),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      )
                                  ),
                                  child: Column(
                                    children: <Widget>[

                                      //  كود الايقون والصورة الدائرية
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30.0),
                                        child: new Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[

                                            new IconButton(
                                                icon: Icon(Icons.format_align_left  ,color: Colors.white,),
                                                onPressed: (){}
                                            ),

                                            new Container(
                                              height: 60.0,
                                              width: 60.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50.0),
                                                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2018/09/30/22/10/girl-3714828_1280.jpg"),fit:BoxFit.cover)
                                              ),
                                            )

                                          ],
                                        ),
                                      ),

                                      // كود النص DashBoard
                                      new Container(
                                        padding: EdgeInsets.only(left: 15.0 , bottom: 0.0),
                                        child: Row(
                                          children: <Widget>[
                                            new Text("DashBoard" , style: TextStyle(fontSize: 40.0 , fontWeight: FontWeight.bold , color: Colors.white),),
                                          ],
                                        ),
                                      ),


                                      Padding(
                                        padding: const EdgeInsets.only(top: 15.0),
                                        child: new Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Text("Today" , style: TextStyle(fontSize: mFontSize , color: Colors.white)) ,
                                            Text("Week", style: TextStyle(fontSize: mFontSize , color: Colors.white)),
                                            Text("Month", style: TextStyle(fontSize: mFontSize, color: Colors.white)),
                                            Text(" 3 Month", style: TextStyle(fontSize: mFontSize, color: Colors.white)),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                                // هنا كود المربع الذي يظهر في الهيدر
                                Positioned(
                                  bottom: -75.0,
                                  right: 30.0,
                                  left:30.0,
                                  child: new Container(
                                    padding: EdgeInsets.only(top: 30.0 , bottom: 30.0 , left: 20.0 , right: 20.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),

                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              new Container(child: Row(children: <Widget>[
                                                new Icon(Icons.directions_run),
                                                SizedBox(width: 10.0,),
                                                new Text("walk"),
                                              ],),),
                                              Text("5581" , style: TextStyle(fontSize: 40.0 , fontWeight: FontWeight.bold),),
                                              Text("Steps" , style: TextStyle(fontSize: 15.0 , color: Colors.grey.shade500 ,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                        ),
                                        new Icon(Icons.favorite_border , size: 60.0,),
                                      ],
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),


                          new Container(
                            margin: EdgeInsets.only(top: 85.0 , left: 30.0 , right: 30.0),
//                      height: 150.0,
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [ BoxShadow(blurRadius: 5.0 , color: Colors.grey.shade300)]
                            ) ,


                            child: new Container(
                              padding: EdgeInsets.only(top: 30.0 , bottom: 30.0 , left: 20.0 , right: 20.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                              ),

                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        new Container(child: Row(children: <Widget>[
                                          new Icon(Icons.wb_cloudy),
                                          SizedBox(width: 10.0,),
                                          new Text("walk"),
                                        ],),),
                                        Text("18 Cups" , style: TextStyle(fontSize: 40.0 , fontWeight: FontWeight.bold ),),
                                      ],
                                    ),
                                  ),
                                  new Icon(Icons.favorite_border , size: 60.0,),
                                ],
                              ),
                            ),
                          ),

                          // هنا كود الكونتينر الذي يحتوي علي  EdgeInsets2
                          new Container(
                            margin: EdgeInsets.only( top: 10.0, left: 30.0 , right: 30.0),
//                      height: 150.0,
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0)
                            ) ,
                            child: Row(
                              children: <Widget>[
                                new Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20.0 , top: 30.0 , right: 10.0 , bottom: 30.0),
//                                height: 150.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10.0),
                                          boxShadow: [ BoxShadow(blurRadius: 5.0 , color: Colors.grey.shade300)]
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              new Text("Sleep"  , style: TextStyle(fontSize: 18.0 , color: Color(0xFF9ea5dc)),),
                                              new Icon(Icons.apps),
                                            ],),
                                          SizedBox(height: 10.0,),
                                          new Text("186" , style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold  ,color: Color(0xFFee8675)),),
                                          SizedBox(height: 10.0,),
                                          new Text("Score"  , style: TextStyle(fontSize: 18.0 , color: Color(0xFF9ea5dc))),
                                        ],),
                                    )
                                ),
                                SizedBox(width: 10.0,),
                                new Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20.0 , top: 30.0 , right: 10.0 , bottom: 30.0),
//                                height: 150.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10.0),
                                          boxShadow: [ BoxShadow(blurRadius: 5.0 , color: Colors.grey.shade300)]
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              new Text("Sleep"  , style: TextStyle(fontSize: 18.0 , color: Color(0xFF9ea5dc)),),
                                              new Icon(Icons.hearing),
                                            ],),
                                          SizedBox(height: 10.0,),
                                          new Text("186" , style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold  ,color: Color(0xFFee8675)),),
                                          SizedBox(height: 10.0,),
                                          new Text("Score"  , style: TextStyle(fontSize: 18.0 , color: Color(0xFF9ea5dc))),
                                        ],),
                                    )
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 30.0,)


                        ],
                      ),
                    ),
                  ),
                ],

              ),


            ),
          ],
        ),
      )


    );
  }
}


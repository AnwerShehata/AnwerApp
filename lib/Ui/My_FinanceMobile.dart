import 'package:flutter/material.dart';

class My_FinanceMobile extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_FinanceMobile> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(






        //------------------------ Body --------------------------------------
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            new Container(
              child: Column(
                children: <Widget>[


           new Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: <Widget>[

            // Code 2 Icone
            new Container(
              height: 220.0,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100.0),
                  bottomLeft: Radius.circular(100.0),
                ),
                gradient: LinearGradient(
                  colors: [Color(0xFFb584f7), Color(0xFF5a60e8)],
                    begin: FractionalOffset.centerRight,
                   end: FractionalOffset.bottomLeft,
                ),
              ),
              child: new Column(
                children: <Widget>[

                  new Container(padding: EdgeInsets.symmetric(horizontal: 30.0 , vertical: 20.0),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    new Icon(Icons.format_align_left ,size: 20.0, color: Colors.white,),
                    new Icon(Icons.notifications_active, size: 30.0, color: Colors.white,),
                  ],),),

                  new Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.0 ),
                    child: Row(
                      children: <Widget>[

                        new Container( width: 60.0, height: 60.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2018/10/08/14/46/bird-3732867__480.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(color: Colors.white , width: 2.0)
                          ),
                        ),

                        new Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          new Text("Ike Puspita Sari" ,style: TextStyle(fontSize: 20.0 , color: Colors.white),),
                          new Text("@anwershehata.com" ,style: TextStyle(color: Colors.white)),
                        ],),),

                    ],
                    ),
                  )

              ],),
            ),

            //هنا كود المربع الذي تحت الصورة
            Positioned(
              right: 40.0,
              left: 40.0,
              bottom: -90.0,
              child: new Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [ BoxShadow(blurRadius: 20.0 , color: Colors.black.withOpacity(0.2))],
                ),
                child: Column(
                  children: <Widget>[

                    new Container(padding: EdgeInsets.all(15.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text("My Balance"  , style: TextStyle(color: Colors.grey.shade500),),
                          new Text("Rp 10.000.000"  , style: new TextStyle(fontSize: 18.0 ,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    new Divider(),
                    new Container( padding: EdgeInsets.all(12.0),
                      child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          
                          _buildIconAndName("Send", Icons.hearing,colorIcons: Colors.deepPurple.shade500),
                          _buildIconAndName("Pay", Icons.wb_cloudy , colorIcons: Colors.deepPurple.shade900),
                          _buildIconAndName("Send", Icons.favorite_border),
                          _buildIconAndName("Send", Icons.hotel ,colorIcons: Colors.deepPurple.shade500),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),



          ],
        ),

                  new Container(
                    margin: EdgeInsets.fromLTRB(40.0, 110.0, 40.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        
                       new Expanded(child: Container(
                          child: Column(
                            children: <Widget>[
                              _buildIconAndName2("E-Shopping", Icons.shopping_cart , colorIcons: Color(0xFFb374dd)),
                              _buildIconAndName2("Chartity", Icons.favorite, colorIcons: Color(0xFFfb5e91)),
                              _buildIconAndName2("Split Bills ", Icons.record_voice_over, colorIcons: Color(0xFF36b9e7)),
                            ],
                          ),
                        )),

                          new Expanded(child: Container(
                            child: Column(
                              children: <Widget>[
                                _buildIconAndName2("Bill Payment", Icons.card_giftcard , colorIcons: Color(0xFF7d75ff)),
                                _buildIconAndName2("Send Gift", Icons.send , colorIcons: Color(0xFFf6842b)),
                                _buildIconAndName2("Cash Back", Icons.keyboard_voice , colorIcons: Color(0xFF42c382)),
                              ],
                            ),
                          )),




                      ],
                    ),
                  ),

                  SizedBox(height: 20.0,),

                  new Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0,),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text("Promo" , style: new TextStyle(color: Colors.deepPurple.shade700 , fontSize: 18.0),),
                        new Icon(Icons.arrow_forward_ios , size: 15.0, color: Colors.purple.shade500,)
                      ],
                    ),
                  ),

                  new Container(
                    height: 130.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(5.0),
                      children: <Widget>[

                        _ListViewHorizontal(),
                        _ListViewHorizontal(),
                        _ListViewHorizontal(),
                        _ListViewHorizontal(),


                      ],
                    ),
                  ),

                   SizedBox(height: 30.0,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _ListViewHorizontal() {
    return new Container(
                        margin: EdgeInsets.only(right: 20.0),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: LinearGradient(
                            colors: [Color(0xFF7e6aff), Color(0xFF60b3ff)],
                                      begin: FractionalOffset.centerLeft,
                                     end: FractionalOffset.centerRight,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            new Container(
                              height: 80.0, width: 80.0,
                              decoration: BoxDecoration(color: Color(0xFF887dff),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: new Icon(Icons.add_shopping_cart ,color: Colors.amber,size: 40.0, ),
                            ),

                            SizedBox(width: 20.0,),

                            new Container(
                              padding: EdgeInsets.symmetric(vertical: 30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Text("Saving Account  " , style: TextStyle(fontSize: 27.0 ,color: Colors.white),),
                                  new Text("Get Up 10% Monthly interest" ,style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),


                          ],
                        ),
                      );
  }

  Container _buildIconAndName(String name , IconData myIcons , {Color colorIcons = Colors.purple}) {
    return new Container(
                          child: Column(
                            children: <Widget>[
                              new Container(height: 55.0,width: 55.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf7f6fc),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: new Icon(myIcons , size: 30.0,color:colorIcons),
                              ),
                              new Text(name),

                            ],
                          ),
                        );
  }

  Container _buildIconAndName2(String name , IconData myIcons , {Color colorIcons = Colors.purple}) {
    return new Container( padding: EdgeInsets.all(6.0),
                          child: Row(
                            children: <Widget>[
                              new Container(height: 40.0,width: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFefeffb),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: new Icon(myIcons , size: 25.0,color:colorIcons),
                              ),
                              SizedBox(width: 10.0,),
                              new Text(name , style: new TextStyle(fontWeight: FontWeight.w300),),

                            ],
                          ),
                        );
  }





}
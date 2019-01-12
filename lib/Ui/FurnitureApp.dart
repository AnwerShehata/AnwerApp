import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';
import 'package:anwerapp/Tools/app_Colors.dart';
import 'package:anwerapp/Ui/FurnitureApp2.dart';
class FurnitureApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<FurnitureApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(



        //----- Body--------------------------------------------
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[

            new Column(
              children: <Widget>[
                Stack(children: <Widget>[

                  new Container(
                    height:220,
//                    width: double.infinity,
                    width: double.infinity,
                    color: anColor1
                  ),

                  Positioned(
                    bottom: 50,  right: 100,
                      child: Container(
                         height: 400,  width: 400,
                        decoration: BoxDecoration(
                          color: anColor2.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(400)
                        ),
                  )),

                  Positioned(
                    bottom: 100,  left: 250,
                      child: Container(
                        height: 200,  width: 200,
                        decoration: BoxDecoration(
                          color: anColor3.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(300)
                        ),
                      )),


                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: new Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        SizedBox(height: 10,),
                        //------ Image Account and IconButton Menu------
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            my_ImageCircleAccount(
                                borderWidth:2 ,
                                borderColor: Colors.white ,
                                width: 55 ,
                                height: 55 ,
                                borderRadius: 50 ,
                                imagURL: "https://cdn.pixabay.com/photo/2017/06/28/04/29/adult-2449725__480.jpg"),
                            new IconButton(icon: Icon(Icons.menu,color: Colors.white,size: 30,),  onPressed: (){},),
                          ],
                        ),

                        //-----Title Hello ,  Pino --------------------------
                        SizedBox(height: 30),
                        new Text("Hello ,  Pino" , style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.w700),),
                        new Text("What do you want to buy ?" , style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.w300),),


                        //-----Search --------------------------
                        SizedBox(height: 20),
                        my_TextFieldMaterial( prefixIcon: Icons.search ,  prefixIconColor: Colors.amber ,
                            prefixIconSize: 35 ,  Radius: 10 ,  elevation: 5,  horizontal: 10),



                      ],
                    ),
                  )
                ],),


                //------ هنا ايقونات الاقسام-----------------------
                SizedBox(height:10),
                new Stack(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Material(
                      elevation: 1,
                      child: new Container(height: 75, color: Colors.white,),),

                    Row( mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        _buildGesture(context, "img/desks.png", "Safa", (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FurnitureApp2()));}),
                        _buildGesture(context, "img/dresser.png", "Wardrobe", (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FurnitureApp2()));}),
                        _buildGesture(context, "img/dressers.png", "Desk", (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FurnitureApp2()));}),
                        _buildGesture(context, "img/dressers.png", "Dresser", (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FurnitureApp2()));}),
                      ],
                    ),
                  ],
                ),



                SizedBox(height:20),
                buildCardMeduol(context, "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939__480.jpg", "FinnNavian", "\$229"),
                buildCardMeduol(context, "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376__480.jpg", "FinnNavian", "\$134"),
                buildCardMeduol(context, "https://cdn.pixabay.com/photo/2016/08/26/15/06/home-1622401__480.jpg", "FinnNavian", "\$876"),
                buildCardMeduol(context, "https://cdn.pixabay.com/photo/2013/09/21/14/30/sofa-184551_1280.jpg", "FinnNavian", "\$376"),




              ],
            ),


          ],
        ),






      ),
    );
  }

  Padding buildCardMeduol(BuildContext context , String imag ,String name  ,String price ) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Card(
                  elevation: 2,
                  child: new Container(height: 180,
                    child: Row(
                      children: <Widget>[

                      //------- Container Image Model----
                        new Container(
                          width: MediaQuery.of(context).size.width /2,
                          decoration: BoxDecoration(
                            image: DecorationImage( fit: BoxFit.cover, image: NetworkImage(imag))
                          ),
                        ),

                      //------ Container Data Model ----------
                      SizedBox(width: 8),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          //====== Name and Icons
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Text(name), SizedBox(width: 30),
                              Material(elevation: 3,
                                borderRadius: BorderRadius.circular(50),
                                child: new  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                  child: Icon(Icons.favorite,color: Colors.red,),
                                  ),
                              ),
                            ],
                          ),

                          //============== text Description
                          SizedBox(height: 8),
                          new Container(
                           width: MediaQuery.of(context).size.width/3,
                            child: Text("Expand your knowledge of Flutter with the Expa knowledge of Flutter with the Expa ".substring(0,60) ,
                              style: TextStyle(color: Colors.grey.shade400 , fontSize: 13),),
                          ),


                          //==== Price and Addcard
                          new Row(children: <Widget>[
                            //price
                            new Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width/7,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                              ),
                              child: new Text(price ,style: TextStyle(fontSize: 17 , color: Colors.white), ),
                              alignment: Alignment.center,
                            ),
                            //addcard
                            new Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(
                                color: anColor1,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(15))
                              ),
                              child: Text("Add Card" , style: TextStyle(fontSize: 15 , color: Colors.black , fontWeight: FontWeight.w300),),alignment: Alignment.center,
                            )
                          ],)



                        ],
                      )







                      ],
                    ),
                  ),
                ),
              );
  }

  GestureDetector _buildGesture(BuildContext context ,String imagURL,String name , VoidCallback  onBtnclicked ) {
    return GestureDetector(onTap: onBtnclicked,
                        child: new Container(
                          height: 75,
                          width: MediaQuery.of(context).size.width /4,
                          child: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                    image: AssetImage(imagURL)
                                  ),
                              ),
                            ),
                            Text(name ,style: TextStyle(fontSize: 15),)
                          ],
                        ),),
                      );
  }
}
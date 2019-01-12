import 'package:flutter/material.dart';

class My_CakesCatalog extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_CakesCatalog> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //------- AppBar-------------------------------------------
        appBar: new AppBar(
          elevation: 0.0,
          title: new Text("Fine quality" , style: TextStyle(color: Colors.black ,fontWeight: FontWeight.w300),),
          leading: new IconButton(icon: Icon(Icons.arrow_back_ios ,color: Colors.black,),
              onPressed: (){Navigator.pop(context,true);}),
          backgroundColor: Colors.white,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search , color: Colors.grey,size: 30,), onPressed: (){})
          ],
        ),


        //------- Body-----------------------------------------------
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              //======== Container Header =============
              new Container(
                height: 280,
                child: Row(
                  children: <Widget>[

                    SizedBox(height: 20),
                    new Expanded(flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20) ,bottomRight: Radius.circular(20)),
                          ),
                          //============== هنا البوكس الذي يحتوي علي الصورة
                          child: Column(
                            children: <Widget>[
                              Stack(children: <Widget>[
                                  //-- imag Path -----
                                  Container(
                                      height: 280,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(20) ,bottomRight: Radius.circular(20)),
                                      image: DecorationImage(fit: BoxFit.fitHeight,
                                       image: NetworkImage("https://cdn.pixabay.com/photo/2017/07/23/18/23/roll-2532192__480.jpg"))
                                      )),

                                  //--- text title and Price
                                  Positioned( top: 150,  left: 30,
                                      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Text("Honey Bread" , style: TextStyle(fontSize: 25 , color: Colors.white , fontWeight: FontWeight.bold),),
                                          new Text("\$88" , style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.bold),),
                                        ],
                                      ))
                                ],
                              )
                            ],
                          ),
                        )),
                    SizedBox(width: 5,),
                    new Expanded(
                        child: Container(
                      decoration: BoxDecoration(
//                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20) ,bottomLeft: Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          MaterialIcons(icons: Icons.favorite,ColorIcons: Colors.red , value: "785"),
                          MaterialIcons(icons: Icons.chat,ColorIcons: Colors.blueAccent , value: "687"),
                          MaterialIcons(icons: Icons.star_half,ColorIcons: Colors.amber , value: "324"),
                        ],
                      ),
                    )),
                  ],
                ),
              ),



              //==== text Commodity ==================
              Padding(
                padding: const EdgeInsets.only(left: 20 ,top: 20 ),
                child: new Text("Commodity" , style: TextStyle(fontSize: 20),),
              ),

              //======== GridView ===================
              SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 2,
                childAspectRatio: 0.85,
                mainAxisSpacing: 15,
                shrinkWrap: true,
                children: <Widget>[

                  _buildFoodCard(
                      name: "pixabay",
                      subNamer: "attribution required",
                      like: 1234,
                      chat: 435,
                      imagPATH: "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg"
                  ),

                  _buildFoodCard(
                      name: "pixabay",
                      subNamer: "attribution required",
                      like: 678,
                      chat: 76,
                      imagPATH: "https://cdn.pixabay.com/photo/2016/06/07/17/15/yogurt-1442034__480.jpg"
                  ),

                  _buildFoodCard(
                      name: "pixabay",
                      subNamer: "attribution required",
                      like: 876,
                      chat: 756,
                      imagPATH: "https://cdn.pixabay.com/photo/2014/12/15/13/40/croissants-569075__480.jpg"
                  ),

                  _buildFoodCard(
                      name: "pixabay",
                      subNamer: "attribution required",
                      like: 876,
                      chat: 756,
                      imagPATH: "https://cdn.pixabay.com/photo/2016/03/09/15/30/breakfast-1246686__480.jpg"
                  ),

                ],
              ),



            ],
          )
        ],),


      ),
    );
  }

  Padding _buildFoodCard({
    String name :"name",
    String subNamer : "subNamer",
    String imagPATH: "",
    int like : 0,
    int chat : 0,
}) {
    return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: new Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10) ,
                          topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            //-----  Container Image-----
                            new Container(
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10)),
                                image: DecorationImage( fit: BoxFit.cover, image: NetworkImage(imagPATH)),
                              ),
                            ),

                            //-----  Title and Description -----
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Text(name , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
                                  new Text(subNamer ,style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),

                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: new Row(
                                children: <Widget>[
                                  new Icon(Icons.favorite, size: 18, color: Colors.grey,),
                                  new Text("$like",style: TextStyle(color: Colors.grey),),
                                  SizedBox(width: 30),
                                  new Icon(Icons.chat , size: 18, color: Colors.grey,),
                                  new Text("$chat",style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            )



                          ],
                        ),

                        Positioned(left: 120 , top: 102,
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.amber,
                              ),
                              child: Center(
                                child: Icon(Icons.shopping_cart , color: Colors.white,),
                              ),
                            )
                        )


                      ],
                    ),
                  ),
                );
  }


  Material MaterialIcons({
    String value: "000"  ,
    IconData icons : Icons.favorite ,
    Color ColorIcons : Colors.grey}) {
    return Material(
                        elevation: 2,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 65,
                          width: 65,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              new Icon(icons, color: ColorIcons),
                              new Text(value, style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 17),)
                            ],
                          )
                        ),
                      );
  }
}
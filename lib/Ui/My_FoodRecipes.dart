import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_Colors.dart';
import 'package:anwerapp/Tools/app_tools.dart';
import 'package:carousel_pro/carousel_pro.dart';

class My_FoodRecipes extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_FoodRecipes> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //----- Body ---------------------------------------
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665__480.jpg")),
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              new Column(children: <Widget>[
                  Stack(children: <Widget>[
                      Container(
                        height: 330,
                        decoration: BoxDecoration(
                          image: DecorationImage(fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
                              image: NetworkImage("https://cdn.pixabay.com/photo/2014/12/11/02/55/corn-syrup-563796__480.jpg")),
                        ),
                        child: Column(
                          children: <Widget>[

                          //==========  Container Search =================
                            Container(
                              padding: EdgeInsets.only(top: 10 , right: 15 , left: 15 ,bottom: 10),
                              child: my_TextFieldMaterial( HintText: "Search for recipes and channels", Radius: 30 , prefixIcon: Icons.search ,elevation: 15 ,),
                            ),
                          SizedBox(height: 15),

                          //========== Text ===========================
                          Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30 , top: 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text("POPULAR RECIPES" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold ,color: Colors.white),),
                                    new Text("THIS WEEK" ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.amber ,)),
                                  ],
                                ),
                              ),
                            ],
                          ),


                            //========== ListView horizontal  ===========================
                            SizedBox(height: 20,),
                            new Padding(padding: EdgeInsets.only(top: 10)),
                            new Container(
                              height: 125,
                              padding: EdgeInsets.only(left: 10 , right: 10),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  _ItemsListView(name: "Anwer shehata" ,imagPath: "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032__480.jpg" ),
                                  _ItemsListView(name: "Ali shehata" ,imagPath: "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908__480.jpg" ),
                                  _ItemsListView(name: "Omr shehata" ,imagPath: "https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062__480.jpg" ),
                                  _ItemsListView(name: "Talal shehata" ,imagPath: "https://cdn.pixabay.com/photo/2017/01/16/17/45/pancake-1984716__480.jpg" ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    SizedBox(width: 30),
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("September 7" , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w400),),
                        new Text("TODAY" ,style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),

                 SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: new Container(
                    height: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1 , color: Colors.amber)
                    ),
                    child:Carousel(
                      boxFit: BoxFit.cover,
                      dotBgColor: Colors.black.withOpacity(0),
                      images: [
                        new NetworkImage('https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062__480.jpg'),
                        new NetworkImage('https://cdn.pixabay.com/photo/2017/01/16/17/45/pancake-1984716__480.jpg'),
                        new NetworkImage("https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552__480.jpg"),
                        new NetworkImage("https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665__480.jpg"),
                        new NetworkImage("https://cdn.pixabay.com/photo/2016/11/06/23/31/breakfast-1804457__480.jpg"),
                      ],
                    )
                  ),
                ),
                  SizedBox(height: 20),





                ],
              )
            ],
          ),
        ),



      ),
    );
  }

  Padding _ItemsListView({
    String imagPath: "https://cdn.pixabay.com/photo/2016/12/26/17/28/food-1932466__480.jpg",
    String imagAccount : "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358__480.jpg",
    String title : "Grilled Chicken",
    String SubTitle : " With Fruit Salad",
    String name : "Name User"
}) {
    return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: new Container(
                                  height: 120,  width: 300,
                                  decoration: BoxDecoration(
                                  ),
                                  child: Row(
                                    children: <Widget>[

                                      new Container(width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , bottomLeft: Radius.circular(30)),
                                          image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(imagPath)),
                                        ),
                                      ),
                                      new Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.4),
                                              borderRadius: BorderRadius.only(topRight: Radius.circular(30) , bottomRight: Radius.circular(30)),
                                            ),
                                            child: Column(
                                              children: <Widget>[
                                                SizedBox(height: 20),
                                                new Text(title ,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w400)),
                                                new Text(SubTitle ,style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w300),),
                                                new Divider(color: Colors.amber),

                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  child: new Row(
                                                    children: <Widget>[
                                                      new Container(
                                                        height: 35, width: 35,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius.circular(20),
                                                          image: DecorationImage(fit: BoxFit.cover,
                                                              image: NetworkImage(imagAccount))
                                                        ),
                                                      ),
                                                      SizedBox(width: 5),
                                                      new Text(name , style: TextStyle(color: Colors.white),)
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              );
  }
}
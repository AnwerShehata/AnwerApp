import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_Colors.dart';
class FurnitureApp2 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<FurnitureApp2> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //----Body ----------------------------------
        body: ListView(
          children: <Widget>[
            new Column(children: <Widget>[
              new Stack(children: <Widget>[
                
                new Container(
                  height: 250,
                  width: double.infinity,
                  color: anColor1,
                ),
                
   /*             Positioned(
                  bottom: 240,
                    right: 100,
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: anColor2.withOpacity(0.6)
                      ),
                    )
                ),
*/
/*                Positioned(
                  bottom: 300,
                    left: 200,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: anColor2.withOpacity(0.6)
                      ),
                    )
                ),*/

                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15,),

                    //====== Image account =============================================
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 15),
                      child: Row( crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            height: 60, width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/29/06/46/adult-1867889_1280.jpg")),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 2, color: Colors.white)
                            ),
                          ),

                          //====== Text  Pino ==============================================
                          SizedBox(width: 15),
                          Column(
                            children: <Widget>[
                              Text("Pino" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                              Text("176****590" , style: TextStyle(fontSize: 13),)
                            ],
                          ),

                          //====== Icon settings ===========================================
                          SizedBox(width: MediaQuery.of(context).size.width-220,),
                          Container(
                            alignment: Alignment.topRight,
                            child:  Icon(Icons.settings ,size: 30, color: Colors.white,),
                          ),
                        ],
                      ),
                    ),


                    //======= Icons Sections===========================================
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconSection(name: "Favorites" , icon: Icons.folder_shared , onPressed: (){}),
                        IconSection(name: "FootRadio" , icon: Icons.radio , onPressed: (){}),
                        IconSection(name: "FootPhone" , icon: Icons.phonelink, onPressed: (){}),
                        IconSection(name: "Footprint" , icon: Icons.print, onPressed: (){}),
                      ],
                    ),


                    // ====== هنا كود الكارد
                    SizedBox(height: 20,),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            cardDetails("Pending Payment", Icons.comment, "5"),
                            cardDetails("Pending Payment", Icons.terrain, "5"),
                          ],
                        ),

                         SizedBox(height: 10),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            cardDetails("Pending Payment", Icons.cake, "5"),
                            cardDetails("Pending Payment", Icons.card_travel, "5"),
                          ],
                        ),
                      ],
                    ),



                    SizedBox(height: 30,),
                    buildRow(name: "Gift card" , icons: Icons.card_travel , ColorIcons: Colors.red ,ColorContainer: Colors.red, onPressed: (){}),
                    buildRow(name: "Bank card" , icons: Icons.cake , ColorIcons: Colors.amber.shade600 ,ColorContainer: Colors.amber.shade600, onPressed: (){}),
                    buildRow(name: "Consulting collection" , icons: Icons.terrain , ColorIcons: Colors.blueAccent ,ColorContainer: Colors.blueAccent, onPressed: (){}),
                    buildRow(name: "Replacement code" , icons: Icons.account_balance , ColorIcons: Colors.green ,ColorContainer: Colors.green, onPressed: (){}),
                    buildRow(name: "Customer  service" , icons: Icons.cloud_upload , ColorIcons: Colors.deepPurpleAccent ,ColorContainer: Colors.deepPurple, onPressed: (){}),








                  ],
                ),






              ],)
            ],)

          ],
        ),

      ),
    );
  }

  Row buildRow({
    String name : "name Card",
    IconData icons: Icons.account_box,
    VoidCallback onPressed,
    Color ColorIcons : Colors.grey,
    Color ColorContainer : Colors.blueAccent,
}) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //======== Icons and Text Gift Card ==============
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: new Container(child: Row(children: <Widget>[
                        new Container(
                          height: 50,  width: 50,
                          decoration: BoxDecoration(
                            color:ColorContainer.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(50)),
                          child: new Icon(icons,size: 30,color: ColorIcons),
                        ),

                        //========== Icons Moro........
                        SizedBox(width: 10,),
                        new Text(name , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15),)
                      ])),
                    ),

                      new IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: onPressed)

                  ],);
  }

  Widget cardDetails(String title ,IconData icons , String value){
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 125,
        width: (MediaQuery.of(context).size.width/2)-20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),

        //======== here Icon and Text and Value =========
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10 , left: 10),
              child: new Icon(icons , size: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12 , left: 10),
              child: new Text(title),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1 , left: 10),
              child: new Text(value , style: TextStyle(color: Colors.red , fontWeight: FontWeight.bold),),
            )
          ],
        ),

      ),
      
    );
  }

  Column IconSection({String name : "name" , IconData icon : Icons.settings ,VoidCallback  onPressed}) {
    return new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(icon ,
                          color: Colors.white, size: 40,), onPressed: onPressed),

                        Text(name, style: TextStyle(fontSize: 15 , color: Colors.white),),
                        ]);
  }
}
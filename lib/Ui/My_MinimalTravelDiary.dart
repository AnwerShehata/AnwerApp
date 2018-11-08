import 'package:flutter/material.dart';

class My_MinimalTravelDiary extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_MinimalTravelDiary> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(



        //----Baidy -----------------------------------------------
        body: ListView(
          children: <Widget>[

            _buildPaddingHeader() ,          // استدعاء الدالة الخاصة
            _buildPaddingAddUpdate(),
            _buildPaddingViewAll("personal"),
            _buildPaddingImageGallery(context, "https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", "https://images.pexels.com/photos/68672/beach-beverage-caribbean-cocktail-68672.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350", "https://images.pexels.com/photos/457878/pexels-photo-457878.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350"),
            buildPaddingImageDetails("Sea Kuwit "),
            SizedBox(height: 40.0,),


            _buildPaddingViewAll("Free for commercial use "),
            _buildPaddingImageGallery(context, "https://cdn.pixabay.com/photo/2017/01/14/20/55/cairo-1980350_1280.jpg", "https://cdn.pixabay.com/photo/2017/03/20/14/33/pyramids-2159286__480.jpg", "https://cdn.pixabay.com/photo/2017/01/14/22/47/egypt-1980586__480.jpg"),
            buildPaddingImageDetails("Egypt 2019"),
            SizedBox(height: 40.0,),


            _buildPaddingViewAll("FROM THE COMMUNITY"),
            _buildPaddingImageGallery(context, "https://cdn.pixabay.com/photo/2017/02/19/16/01/mountaineer-2080138__480.jpg", "https://cdn.pixabay.com/photo/2017/03/15/13/27/rough-horn-2146181__480.jpg", "https://cdn.pixabay.com/photo/2016/12/11/12/02/bled-1899264__480.jpg"),
            buildPaddingImageDetails("Related Images"),
            SizedBox(height: 40.0,),



            
          ],
        ),


      ),
    );
  }

  Padding buildPaddingImageDetails(String name) {
    return Padding(
            padding: EdgeInsets.only(left: 15.0 , top: 15.0 , right: 15.0),
            child: Container(
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(name , style: TextStyle(fontSize: 15.0 , fontWeight: FontWeight.bold),),
                      new Text("Soto added 52  Photos   .2h ago", style: TextStyle(color: Colors.grey.shade500)),
                    ],
                  ),

                  new Container(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Icon(Icons.near_me , color: Colors.grey.shade500,),

                        new Icon(Icons.chat , color: Colors.grey.shade500),
                        new Icon(Icons.favorite_border ,color: Colors.grey.shade500),
                      ],
                    ),
                  )






                ],
              ),
            ),
          );
  }

  Padding _buildPaddingImageGallery(BuildContext context , String img1 , String img2  , String img3) {
    return Padding(
              padding: EdgeInsets.only(top: 10.0 , left: 15.0  ,right: 15.0),
            child: Container(
              height: 225.0,
              child: Row(
                children: <Widget>[
                  new Container(
                    height: 225.0,
                    width: MediaQuery.of(context).size.width / 2 +40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                      image: DecorationImage(image: NetworkImage(img1),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(width: 2.0,),

                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      new Container(
                        height: 111.5,
                        width: MediaQuery.of(context).size.width / 2 -72.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.0),
                            ),
                            image: DecorationImage(image: NetworkImage(img2),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(height: 2.0,),

                      new Container(
                        height: 111.5,
                        width: MediaQuery.of(context).size.width / 2 -72.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15.0),
                            ),
                            image: DecorationImage(image: NetworkImage(img3),fit: BoxFit.cover)
                        ),
                      ),

                    ],
                  )
              ],),
            ),
          );
  }

  Padding _buildPaddingViewAll(String nameSection) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(15.0 , 30.0 , 15.0 , 5.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(nameSection, style: TextStyle(fontSize: 20.0 , color: Colors.grey.shade500),),
                Text("view all" , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.blue , fontSize: 15.0),),
              ],
            ),
          );
  }

  Padding _buildPaddingAddUpdate() {
    return Padding(
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  new IconButton(
                      icon: Icon(Icons.near_me),
                      onPressed: (){},
                      color: Colors.blue,
                    iconSize: 50.0,
                      ),

                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("MALDIVES TRIP 2018"),
                      Text("Add an Update" , style: TextStyle(fontSize: 25.0 ,fontWeight: FontWeight.bold)),
                    ],
                  ),

                  new IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: (){},
                    color: Colors.grey.shade500,
                  ),


                ],
              ),
            ),
          );
  }

  // الدالة الخاصة بالعنوان وصورة المستخدم
  Padding _buildPaddingHeader() {
    return Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                new Text("travelogram" , style: TextStyle(fontSize: 20.0 )),
                new Row(
                  children: <Widget>[

                    new IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: (){},
                      color: Colors.grey,
                    ),

                    new InkWell(
                      onTap: (){},
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2012/03/04/01/01/baby-22194__480.jpg"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    )

                  ],
                )

              ],
            ),
          );
  }

}
import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';
//import './FoodList.dart';

class FoodReviews extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<FoodReviews>  with SingleTickerProviderStateMixin{

 String ImagePoster = "https://cdn.pixabay.com/photo/2019/07/06/09/31/girls-4320044__480.jpg" ;
 String ImageUser = "https://cdn.pixabay.com/photo/2018/07/21/19/51/horse-3553269__480.jpg";

 TabController tabController;
 @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        body: ListView(
          children: <Widget>[
            // هنا الجزء العلوي الذي يحتوي علي صور البوستر وصورة المستخدم
            new Stack(
              children: <Widget>[

                new Container(
                    height: 300 ,
//                    color: Colors.green
                ) ,
                
                new Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(ImagePoster)),
                  ),
                ),

                Positioned(
                  top: 150,
                    left: 20,
                    child: Container(
                      height: 150,
                      width:150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white , width: 2.0),
                        borderRadius: BorderRadius.circular(75),
                        image: DecorationImage( fit: BoxFit.cover,image: NetworkImage(ImageUser))
                      ),
                    )
                ),

                Positioned(
                  top: 210,
                    left: 185,
                    child: Row(
                      children: <Widget>[

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Elisabeth",style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w400),),
                            Text("1.974  Followers",style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.w500 ,color: Colors.grey),),
                          ],
                        ),

                        my_Button(
                          onBtnclicked: (){},
                            horizontal: 30 ,
                            textButton: "Follow" ,
                            radiusButton: 20 ,
                            heightButton: 30 ,
                            colorButton: Colors.greenAccent.shade100.withOpacity(0.3),
                          colorText: Colors.green
                        )



                      ],
                    )
                )






              ],
            ),

            // هنا التحكم بتاع التاب
            new Padding(
              padding: EdgeInsets.only(top: 20),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.green.shade700,
                labelColor: Colors.green[700],
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(child: Text("Recipes"),),
                  Tab(child: Text("Galleries"),),
                  Tab(child: Text("Story"),),
                ],
              ),
            ),

            // هنا مكان عرض الصفحات الخاصة بالتاب فيو
            new Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.grey[200],
              child: TabBarView(
                controller: tabController,
                  children: <Widget>[
                    _FoodRecipes(),
                    _FoodGalleries(),
                    _FoodStory()
                  ]
              )
            )

          ],
        ),

      ),
    );
  }

  Widget _FoodRecipes (){
   return ListView(
     children: <Widget>[
       Padding(
         padding: const EdgeInsets.all(50),
         child: new Center(child: Text("Test Page Recipes" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),),
       )
     ],
   );
  }

  Widget _FoodGalleries (){
   return ListView(
     children: <Widget>[
       Padding(
         padding: const EdgeInsets.all(50),
         child: new Center(child: Text("Test Page Galleries", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),),
       )
     ],
   );
  }

  Widget _FoodStory (){
   return ListView(
     children: <Widget>[
       Padding(
         padding: const EdgeInsets.all(50),
         child: new Center(child: Text("Test Page Story", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),),
       )
     ],
   );
  }
}






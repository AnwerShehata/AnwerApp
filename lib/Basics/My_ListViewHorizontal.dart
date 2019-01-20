import 'package:flutter/material.dart';
import 'package:anwerapp/Basics/My_Images.dart';

class My_ListViewHorizontal extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ListViewHorizontal> {

  final String imagePoster = "img/poster/Skyscraper.jpg";
  final String NamePoster  = "";


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo") ,
      home:  new Scaffold(

        //------ App bar -----------------------------------------
        appBar: new AppBar(
          backgroundColor: Colors.deepPurple.shade900,
          elevation: 0.0,
          centerTitle: true,
          title: Text("ListView Horizontal"),),


        //------ Body  -----------------------------------------
        body: SafeArea(
          child: new ListView( padding: EdgeInsets.all(3.0),
            children: <Widget>[

              //====  قسم افلام رومانسية =======
              _NameSection(" افلام رومانسي"),
              // هنا يتم استدعاء الداله التي تحمل اسم القسم
              new Container(
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(5.0),
                  children: <Widget>[
                    // هنا يتم استدعاء الدالة التي تحمل بوستر الفيلم والاسم
                    _PosterMoves("Venom (2018)", "https://image.tmdb.org/t/p/w1280/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg"),
                    _Padding(),
                    _PosterMoves("The Nun (2018) ", "https://image.tmdb.org/t/p/w1280/sFC1ElvoKGdHJIWRpNB3xWJ9lJA.jpg"),
                    _Padding(),
                    _PosterMoves("Ant-Man ", "https://image.tmdb.org/t/p/w1280/rv1AWImgx386ULjcf62VYaW8zSt.jpg"),
                    _Padding(),
                    _PosterMoves("The Predator", "https://image.tmdb.org/t/p/w1280/wMq9kQXTeQCHUZOG4fAe5cAxyUA.jpg"),
                    _Padding(),
                    _PosterMoves("Seven Deadly", "https://image.tmdb.org/t/p/w1280/r6pPUVUKU5eIpYj4oEzidk5ZibB.jpg"),
                    _Padding(),
                    _PosterMoves("Jurassic World", "https://image.tmdb.org/t/p/w1280/c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg"),
                    _Padding(),
                    _PosterMoves("Avengers", "https://image.tmdb.org/t/p/w1280/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg"),
                    _Padding(),
                    _PosterMoves("Black Panther ", "https://image.tmdb.org/t/p/w1280/uxzzxijgPIY7slzFvMotPv8wjKA.jpg"),
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(20.0)),


              //====  قسم افلام الاكشن =======
              _NameSection(" افلام الاكشن"),                // هنا يتم استدعاء الداله التي تحمل اسم القسم
              new Container( height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(5.0),
                  children: <Widget>[
                    // هنا يتم استدعاء الدالة التي تحمل بوستر الفيلم والاسم
                    _PosterMoves("Venom (2018)", "https://image.tmdb.org/t/p/w1280/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg"),
                    _Padding(),
                    _PosterMoves("The Nun (2018) ", "https://image.tmdb.org/t/p/w1280/sFC1ElvoKGdHJIWRpNB3xWJ9lJA.jpg"),
                    _Padding(),
                    _PosterMoves("Ant-Man ", "https://image.tmdb.org/t/p/w1280/rv1AWImgx386ULjcf62VYaW8zSt.jpg"),
                    _Padding(),
                    _PosterMoves("The Predator", "https://image.tmdb.org/t/p/w1280/wMq9kQXTeQCHUZOG4fAe5cAxyUA.jpg"),
                    _Padding(),
                    _PosterMoves("Seven Deadly", "https://image.tmdb.org/t/p/w1280/r6pPUVUKU5eIpYj4oEzidk5ZibB.jpg"),
                    _Padding(),
                    _PosterMoves("Jurassic World", "https://image.tmdb.org/t/p/w1280/c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg"),
                    _Padding(),
                    _PosterMoves("Avengers", "https://image.tmdb.org/t/p/w1280/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg"),
                    _Padding(),
                    _PosterMoves("Black Panther ", "https://image.tmdb.org/t/p/w1280/uxzzxijgPIY7slzFvMotPv8wjKA.jpg"),
                  ],
                ),
              ),

              new Padding(padding: EdgeInsets.all(20.0)),


              //====  قسم اعلانات Google =======
              new Container( color: Colors.black12, height: 70.0,
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text("هنا يتم اضافة الاعلانات المدفوعة " , style: TextStyle(fontSize: 25.0 , color: Colors.deepPurple.shade900),)
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(20.0)),


              //====  قسم الصور الدائرية  =======
              _NameSection(" قسم الصور الدائرية   CircleAvatar"),  // هنا يتم استدعاء الداله التي تحمل اسم القسم
              new Container( height: 200.0, color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(5.0),
                  children: <Widget>[
                    // هنا يتم استدعاء الدالة التي تحمل بوستر الفيلم والاسم
                    _CircleAvatar(" افلام الاكشن", "https://image.tmdb.org/t/p/w1280/uxzzxijgPIY7slzFvMotPv8wjKA.jpg"),
                    _Padding(),
                    _CircleAvatar(" افلام الاكشن", "https://image.tmdb.org/t/p/w1280/uxzzxijgPIY7slzFvMotPv8wjKA.jpg"),
                    _Padding(),
                    _CircleAvatar(" افلام الاكشن", "https://image.tmdb.org/t/p/w1280/uxzzxijgPIY7slzFvMotPv8wjKA.jpg"),
                    _Padding(),
                    _CircleAvatar(" افلام الاكشن", "https://image.tmdb.org/t/p/w1280/uxzzxijgPIY7slzFvMotPv8wjKA.jpg"),
                    _Padding(),
                    _CircleAvatar(" افلام الاكشن", "https://image.tmdb.org/t/p/w1280/uxzzxijgPIY7slzFvMotPv8wjKA.jpg ds"),
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(5.0)),


            ],
          ),
        ),
      ),
    );
  }




  // هذا الدالة التي تحمل حجم Padding
  Padding _Padding() => new Padding(padding: EdgeInsets.all(5.0));

  // هذا الدالة التي تحمل الصور الدائرية
  CircleAvatar _CircleAvatar(String nameImage , String imagePoster) {
    return CircleAvatar(
                            radius: 90.0,
//                              maxRadius: 90.0,
//                              minRadius: 50.0,
                          backgroundColor: Colors.purple,    // تعمل في حالت عدم ظهور الصورة
                          child: Text(nameImage) ,
                            backgroundImage: NetworkImage(imagePoster),
                          );
  }

  // هذا الدالة التي اسم القسم
  Container _NameSection(String nameSection) {
    return new Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new InkWell(onTap: (){}, child: new Icon(Icons.more_horiz , color:Colors.lightBlue ,),),
                  new Text(nameSection , style: new TextStyle(fontSize: 20.0 , color: Colors.lightBlue),),
                ],
              ),
            );
  }

  // هذا الدالة التي تحمل الاسم و بوستر الفيلم

  Container _PosterMoves(String NamePoster , String imagePoster) {
    return new Container( width: 145.0 , color: Colors.white,
                      child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => My_Images(imgURL: imagePoster,title: NamePoster,)),);},
                        child: Column(
                          children: <Widget>[
                            new Image.network(imagePoster, fit:BoxFit.cover , height: 200.0,),
                            new Padding(padding: EdgeInsets.all(5.0)),
                            new Text(NamePoster)
                          ],
                        ),
                      )
                  );
  }



}
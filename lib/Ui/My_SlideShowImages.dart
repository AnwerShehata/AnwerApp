import 'package:flutter/material.dart';

class My_SlideShowImages extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_SlideShowImages>{


  String image1 = "https://cdn.pixabay.com/photo/2016/05/25/10/43/hamburger-1414422__480.jpg";
  String image2 = "https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054__480.jpg";
  String image3 = "https://cdn.pixabay.com/photo/2016/03/26/23/19/hamburger-1281855__480.jpg";
  String image4 = "https://cdn.pixabay.com/photo/2018/05/30/19/18/burger-3442227__480.jpg";
  String image5 = "https://cdn.pixabay.com/photo/2017/02/03/03/54/burger-2034433__480.jpg";
  String image6 = "https://cdn.pixabay.com/photo/2017/01/13/03/02/burgers-1976198__480.jpg";

  int photoindex = 0;
  List<String> photos= [
    'https://cdn.pixabay.com/photo/2015/12/08/00/26/food-1081707__480.jpg',
    'https://cdn.pixabay.com/photo/2016/11/19/12/44/burgers-1839090__480.jpg',
    'https://cdn.pixabay.com/photo/2017/02/05/21/06/burger-2041192__480.jpg',
    'https://cdn.pixabay.com/photo/2018/10/14/13/20/burger-3746476__480.jpg',
    'https://cdn.pixabay.com/photo/2016/11/21/13/04/beef-1845296__480.jpg',
  ];

void _previousImage(){
  setState(() {
    photoindex = photoindex > 0? photoindex - 1: 0;
  });
}

void _nextImage(){
  setState(() {
    photoindex = photoindex <photos.length -1? photoindex + 1: photoindex;
  });
}


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(


        body: ListView(
//          shrinkWrap: true,
          children: <Widget>[
            new Column(
              children: <Widget>[

                //----------- هنا الحتوي الخاص السلايدر Header
                new Stack(
                  children: <Widget>[
                    
                    
                    // كود الخاص بعرض Slide Show
                    new Container( height: 230.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(photos[photoindex]), fit: BoxFit.cover),
                      ),
                    ),

                    // هنا الابقونات التي في داخل  Slide Show
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        new IconButton(icon: Icon(Icons.arrow_back_ios),
                            color: Colors.white,
                            onPressed: (){}
                        ),

                        new IconButton(icon: Icon(Icons.favorite),
                            color: Colors.pink.shade500,
                            onPressed: (){}
                        ),
                      ],
                    ),

                    //عند الضغط علي يمين الصورة يتم الانتقال الي الصورة التاليه
                    new GestureDetector(
                      child: new Container(
                        height: 230.0,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                      ),
                      onTap: _nextImage,
                    ),
                    //عند الضغط علي يسار الصورة يتم الانتقال الي الصورة السابقة
                    new GestureDetector(
                      child: new Container(
                        height: 230.0,
                        width: MediaQuery.of(context).size.width/2,
                        color: Colors.transparent,
                      ),
                      onTap: _previousImage,
                    ),

                    // كود التقييم التي تظهر في النجوم
                    new Positioned(
                      top: 200.0,
                        left: 10.0,
                        child: Row(
                          children: <Widget>[
                            new Icon(Icons.star , color: Colors.amber,),
                            new Icon(Icons.star , color: Colors.amber,),
                            new Icon(Icons.star , color: Colors.amber,),
                            new Icon(Icons.star , color: Colors.amber,),
                            new Icon(Icons.star , color: Colors.grey,),
                            SizedBox(width:20.0,),
                            new Text("4.0" , style: new TextStyle(color: Colors.white , fontSize: 25.0)),
                            SizedBox(width:25.0,),
                            SelectedPhoto(photoIndex:photoindex , numberOfDots: photos.length,),
                          ],
                        )
                    ),

                  ],
                ),

                // هنا كود النصوص التي اسفل السلايدر
                new SizedBox(height: 30.0,),
                new Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("OPEN NEW UNTIL 7PM", style: new TextStyle(color: Colors.grey)),
                      SizedBox(height: 10.0,),
                      new Text("The Cinnamon Snail", style: new TextStyle(color: Colors.black , fontSize: 31.0,fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.0,),
                      new Row(
                        children: <Widget>[
                          new Text("OPEN NEW UNTIL 7PM", style: new TextStyle(color: Colors.grey)),
                          new Padding(padding: EdgeInsets.only(left: 40.0)),
                          new Icon(Icons.map),
                          new Text("400ft Away", style: new TextStyle(color: Colors.grey)),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      new Row (
                        children: <Widget>[
                          new Icon(Icons.wifi  , color: Colors.green,),
                          SizedBox(width: 10.0,),
                          new Text("Loaction confirmed bt 3 users today", style: new TextStyle(color: Colors.green)),
                        ],
                      )
                    ],
                  ),
                ),
                new SizedBox(height: 10.0,),

                new Divider(color: Colors.green,),
                new Container(
                  padding: EdgeInsets.only(left: 30.0 ,top: 20.0),
                  child: Row(
                    children: <Widget>[
                      new Text("FEATURED ITEMS..." , style: TextStyle(fontSize: 25.0 , color: Colors.redAccent ,fontWeight: FontWeight.bold),)
                    ],
                  ),

                ),

                new SizedBox(height: 20.0,),
                _buildListItem(image1),
                new Padding(padding: EdgeInsets.all(5.0)),
                _buildListItem(image2),
                new Padding(padding: EdgeInsets.all(5.0)),
                _buildListItem(image3),
                new Padding(padding: EdgeInsets.all(5.0)),
                _buildListItem(image4),
                new Padding(padding: EdgeInsets.all(5.0)),
                _buildListItem(image5),
                new Padding(padding: EdgeInsets.all(5.0)),
                _buildListItem(image6),
                new Padding(padding: EdgeInsets.all(5.0)),
              ],
            )
          ],
        ),

      ),
    );
  }


  Widget _buildListItem(String picture){
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[

         new Container(
           height: 110.0,
           width: 120.0,
          decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(picture),fit: BoxFit.cover),
            borderRadius: BorderRadius.only(topRight: Radius.circular(20.0) , bottomRight: Radius.circular(20.0))
        ),
      ),

          SizedBox(width: 20.0,),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Build  beautiful native"  , style: TextStyle(fontSize: 15.0 ,fontWeight: FontWeight.bold),),
              new Text("Fast Developmen", style: TextStyle(color: Colors.grey),),
              new Text("Delight your users with Flutter's", style: TextStyle(color: Colors.grey),),
            ],
            
          ),

        ],
      )

    ],

  );

  }


}


// Inner Clase -----------------------------------
class SelectedPhoto extends StatelessWidget {

  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 3.0),
          child: Container(
            height: 8.0,
            width: 8.0,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4.0)
            ),
          ),
        )
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.0,
                    blurRadius: 2.0
                )
              ]
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for(int i = 0; i< numberOfDots; ++i) {
      dots.add(
          i == photoIndex ? _activePhoto(): _inactivePhoto()
      );
    }

    return dots;
  }


  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}

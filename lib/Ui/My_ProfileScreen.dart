import 'package:flutter/material.dart';

class My_ProfileScreen extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
//      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        body: new Stack(
          children: <Widget>[

            // ====== هنا كود المسئول عن عمل الزاوية التي تحت الصورة
            ClipPath(
              child: new Container(
                decoration: BoxDecoration(color: Colors.blue.shade700,
//                  image: DecorationImage(image:  NetworkImage("https://i.ytimg.com/vi/gKIFk8BJsDc/maxresdefault.jpg"),fit: BoxFit.cover)
                ),
              ),
              clipper: getClipper(), // يتم استدعاء الكلاس الذي يحمل  مقاسات الزاوية
            ),


            // كود زر
            new Positioned(
              width: 400.0,
              top: MediaQuery.of(context).size.height/4.5,
              child: Column(
                children: <Widget>[

                  // ====== هنا كود الدائرة المسئولة التي تظهر فيها الصورة
                  new Container(
                    width: 170.0, height: 170.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100.0),
                      image:DecorationImage(image: NetworkImage("https://cdn-images-1.medium.com/max/1600/1*F_ttuYWPAVBGSMyHlX9l9A.jpeg"),fit: BoxFit.cover),
                        boxShadow: [ BoxShadow(blurRadius: 8.0 , color: Colors.black.withOpacity(0.4))],
                    ),
                  ),


                  // ====== هنا كود الاسم والوظيفة
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Anwer shehata"  ,style: TextStyle(fontSize: 27.0),),
                  new Text(" Development Model  Applications"  ,style: TextStyle(fontSize: 13.0 , color: Colors.blue),),
                  new Padding(padding: EdgeInsets.all(30.0)),


                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // استدعاء الدالة التي تحمل كود stack
                      _StackFollowersName("FOLLOWERS" , "3678"),
                      _StackFollowersName("FOLLOWERS" ,"8865"),
                      _StackFollowersName("FOLLOWERS" ,"4698"),
                    ],
                  ),



                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Container(
                    padding: EdgeInsets.all(30.0),
                    child: Row(
                      children: <Widget>[


                        new Expanded(
                          child: Container(
                          height: 50.0,
                          child: OutlineButton(onPressed: (){},
                            child: new Text("Edite Name"),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),),

                        new Padding(padding: EdgeInsets.all(5.0)),
                        new Expanded(
                          child: Container(
                          height: 50.0,
                          child: RaisedButton(onPressed: (){},
                            textColor: Colors.blue,
                            splashColor: Colors.red,
                            color: Colors.blue,
                            elevation: 0.0,
                            child: new Text("Login" , style: new TextStyle(color: Colors.white , fontSize: 20.0),),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),),



                      ],
                    ),
                  )

                ],
              ),
            ),


            
          ],
        ) ,
      ),
    );
  }

  //  الدالة التي تحمل كود stack
  Stack _StackFollowersName(String name , String number) {
    return Stack(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                          child: Text(name, style: TextStyle(color: Colors.grey , fontSize: 13.0),),
                        ),
                        new Container(
                          padding: EdgeInsets.fromLTRB(12.0, 10.0, 5.0, 0.0),
                          child: Text(number, style: TextStyle(color: Colors.black , fontSize: 25.0),),
                        ),
                      ],
                    );
  }

}

// الكلاس الذي يحمل مقاس الزاوي
class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 2.0);
    path.lineTo(size.width + 300, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }


}
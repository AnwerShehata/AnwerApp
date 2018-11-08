import 'package:flutter/material.dart';

class My_UiCards extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_UiCards> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        backgroundColor: Colors.white,

        appBar: new AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: new Text("Near by" ,style: new TextStyle(color: Colors.black),),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: (){},
          ),
        ),

        body: Column(
          children: <Widget>[

            new Stack(
              overflow: Overflow.visible,
              children: <Widget>[

                Positioned(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 0.0),
                     height: 380.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(image: NetworkImage("http://thecolorstalker.com/system/assets/assets/000/000/694/large/DSC_2090c.jpg?1373525109"),fit: BoxFit.cover)
                      ),
                )),


                // هنا كود الامربع الذي اسفل الصورة ويحتوي علي بيانات الشخض
                Positioned(
                  right: 30.0,
                    left: 30.0,
                    bottom: -40.0,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 0.0),
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [ BoxShadow(blurRadius: 5.0 , color: Colors.grey.shade600)]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          //استدعاء الدوال التي تحمل البيانات التي بداخل المربع
                          _StackFollowersName("Fate is Wonderful", "Kayla"),
                          _StackFollowersKm("5.8 Km")
                        ],
                      ),

                    )),



              ],
            ),



            new Padding(padding: EdgeInsets.all(40.0)),
            // كوز الازراز التي في الاسفل ========
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Container(  height: 60.0, width: 60.0,
                  margin: EdgeInsets.only(left: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(50.0),
                      boxShadow: [ BoxShadow(blurRadius: 8.0 , color: Colors.grey.shade200)]
                  ),
                  child: new Icon(Icons.close),
                ),

                new Container(  height: 80.0, width: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(50.0),
                      boxShadow: [ BoxShadow(blurRadius: 10.0 , color: Colors.grey.shade200)]
                  ),
                  child: new Icon(Icons.chat , color: Colors.lightBlueAccent, size: 35.0,),
                ),

                new Container(  height: 60.0, width: 60.0,
                  margin: EdgeInsets.only(right: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(50.0),
                      boxShadow: [ BoxShadow(blurRadius: 8.0 , color: Colors.grey.shade200)]
                  ),
                  child: new Icon(Icons.favorite , color:Colors.pink,),
                ),
              ],
            ),


          ],
        ),


      ),
    );
  }

  
  
  
  //  الدالة التي تحمل كود stack
  Stack _StackFollowersName(String name , String number) {
    return Stack(
      children: <Widget>[
        new Container(

          padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: Text(name, style: TextStyle(color: Colors.grey , fontSize: 13.0),),
        ),
        new Container(
          padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          child: Text(number, style: TextStyle(color: Colors.black , fontSize: 25.0),),
        ),
      ],
    );
  }

  Stack _StackFollowersKm(String name) {
    return Stack(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          child: Text(name, style: TextStyle(color: Colors.grey , fontSize: 15.0),),
        ),
      ],
    );
  }

}
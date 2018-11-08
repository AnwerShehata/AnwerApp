import 'package:flutter/material.dart';

class My_Ui extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Ui> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //---- App Bar  ----------------------------------------------------------
        appBar: new AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: new Text(" GUi"),),


        //---- body  ----------------------------------------------------------
        body: Container(
          child: Column(
            children: <Widget>[

              // ============ Container 1=============
              new Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    new Text("Name is:   $name1",
                      textAlign: TextAlign.start, style:
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue
                      ),),

                    new FlatButton(onPressed: _main1,
                        padding:EdgeInsets.all(7.0),
                        color: Colors.blue,
                        child: new Text("ok" ,
                          style: new TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                    ),))

                  ],
                ),
              ),


              // ============ Container 2=============
              new Container( padding: EdgeInsets.all(20.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    
                    new Text("Name is:  $name2",
                      textAlign: TextAlign.start, style:
                      new TextStyle(
                          fontSize: 20.0,
                          color: Colors.red
                      ),),
                    
                    new FlatButton(onPressed: main2,
                        textColor: Colors.yellow,
                        color: Colors.red,
                        child: new Text("ok" ,
                      style: new TextStyle(
                        fontSize: 30.0
                    ),))

                  ],
                ),
              ),


              // ============ Container 3=============
              new Container( padding: EdgeInsets.all(20.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    new Text("Number is : $number",
                      textAlign: TextAlign.start, style:
                      new TextStyle(
                          fontSize: 20.0,
                          color: Colors.black
                      ),),

                    new FlatButton(onPressed: _main3,
                        textColor: Colors.yellow,
                        color: Colors.black,
                        child: new Text("ok" ,
                          style: new TextStyle(
                            color: Colors.white,
                              fontSize: 30.0
                          ),))



                  ],
                ),
              ),



            ],
          ),
        ),







      ),
    );
  }

  String name1 = "";
  String name2 = "";
  int number = 1;

  void _main1(){
    setState(() {
      name1 = "Anwer shehata";
    });
  }

  void main2(){
    setState(() {
      name2 = "Gmail al Dyem";
    });
  }


  _main3(){
    setState(() {
      number = number +1;
    });
  }
}
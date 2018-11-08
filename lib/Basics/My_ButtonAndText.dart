import 'package:flutter/material.dart';

class My_ButtonAndText extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ButtonAndText> {

  String name = "";
  void chingName (){
    setState(() {
      name = "Anwer shehata";
    });
  }

  void chingName2 (String text){
    setState(() {
      name = text;
    });
  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(


        //------------------ App bar -----------------------------------------------------------------
        appBar:  new AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: new Text(" Button And Text" ,
            style: new TextStyle(
                fontWeight: FontWeight.w300 ,
                fontSize: 25.0
            ),),),



        body: Center(
          child: new Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              new Text( "$name"),

                //----------------------Raised Button icon
                new RaisedButton.icon(onPressed: chingName,
                    icon: new Icon(Icons.edit),
                    label: new Text("Click me"),
                ),

              //----------------------RaisedButton
                new RaisedButton(onPressed: ()=> chingName2("this is paremeter"),
                  child: new Text("Ching Name" , style: new TextStyle(color: Colors.white ),),
                  color: Colors.greenAccent.shade700,
                ),

              //----------------------FlatButton
                new FlatButton(onPressed: ()=>chingName2("FlatButton") ,
                    child: new Text("ok"),
                  textColor: Colors.red,
                ),

              //----------------------IconButton
              new IconButton(icon: new Icon(Icons.desktop_mac),
                  onPressed: () =>chingName2("IconButton"),
                  alignment: Alignment.center,
                  iconSize: 40.0,
                )

            ],),
          ),
        ),




      ),
    );
  }
}
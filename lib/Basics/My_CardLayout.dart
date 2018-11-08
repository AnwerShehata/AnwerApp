import 'package:flutter/material.dart';


class My_CardLayout extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_CardLayout> {
  @override
  Widget build(BuildContext context) {

    //============== Var Card ListTile ===============================
    var card = new Card(
      elevation: 5.0,
      child: new Column(
        children: <Widget>[

          new ListTile(
            title: new Text("User Name"),
            subtitle: new Text("Anwar shehata Abd Alzaher"),
            leading:new Icon(Icons.account_box, color: Colors.purple.shade700,) ,
//            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Drawer()),);},
          ),

          new Divider(color: Colors.purple.shade900, ),


          new ListTile(
            title: new Text("Email Adress"),
            subtitle: new Text("anwershehata@gmail.com"),
            leading:new Icon(Icons.email, color: Colors.purple.shade700,) ,
          ),

          new ListTile(
            title: new Text(" +965 67782374"),
            leading:new Icon(Icons.phone, color: Colors.purple.shade700,) ,
          ),

        ],
      ),
    );


    //============== final Container =================================
    final sizeBox = new Container (
      margin: new EdgeInsets.only(left: 40.0 , right: 40.0),
      child: new SizedBox(
        height: 250.0,
        child: card,
      ),
    );

    //============== final center ===================================
    final center = new Center(
      child: sizeBox,
    );


    return new MaterialApp(
      home:  new Scaffold(

        //----------------- AppBar -----------------------------------------------------------------------
        appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.purple.shade600,
          title: new Text("Card Layout"),),


        //----------------- body -----------------------------------------------------------------------
        body: center,



      ),
    );
  }
}
import 'package:flutter/material.dart';
class My_Drawer extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Drawer> {

  bool value1 = true;
  bool value2 = false;

  void ching (bool value){
    setState(() {
      value1 = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,

      home:  new Scaffold(

        appBar: new AppBar(
          centerTitle: true,
          title:  new Text("Drawer"),) ,



        drawer: new Drawer(
          child: ListView(children: <Widget>[
          new DrawerHeader(child: Text("anwer shehata")),

          new ListTile(onTap:(){} ,
            onLongPress: (){},   // في حالة الضعط علي العنصر
            leading: Icon(Icons.share, color: Colors.amber, size: 30.0,),
            trailing: Switch(value: true, onChanged: ching),
            title: Text("Shar App"),
            subtitle: Text("backgroundColor"),
          ),

          new ListTile(onTap:(){} ,
            onLongPress: (){},   // في حالة الضعط علي العنصر
            leading: Icon(Icons.accessibility, color: Colors.green, size: 30.0,),
            trailing: Switch(value: true, onChanged: ching),
            title: Text("Info App"),
            subtitle: Text("backgroundColor"),
          ),

          new ListTile(onTap:(){} ,
            onLongPress: (){},   // في حالة الضعط علي العنصر
            leading: Icon(Icons.access_alarm, color: Colors.red, size: 30.0,),
            trailing: Switch(value: true, onChanged: ching),
            title: Text("Content App"),
            subtitle: Text("backgroundColor"),
          ),


          new ListTile(onTap:(){} ,
            onLongPress: (){},   // في حالة الضعط علي العنصر
            leading: Icon(Icons.info, color: Colors.lightBlue, size: 30.0,),
            trailing: Checkbox(value: value1, onChanged: ching),
            title: Text("Info App"),
//            subtitle: Text("backgroundColor"),
          ),


          new AboutListTile(icon: new Icon(Icons.account_balance),)
        ],),
        ),


        body: Container(
          child: Row(
            children: <Widget>[

              FlatButton.icon(onPressed: (){Navigator.of(context).pushNamed("/My_checkbox");},
                  icon: new Icon(Icons.add_a_photo), label: new Text("Move To App bar "))

            ],
          ),
        ),


      ),
    );

  }
}
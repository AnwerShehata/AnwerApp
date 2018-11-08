import 'package:flutter/material.dart';

class My_checkbox extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_checkbox> {

 bool value1 = false;
 bool value2 = false;
 bool value3 = true;
 bool value4 = true;



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //------------------ App bar -----------------------------------------------------------------
        appBar:  new AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: new Text(" Checkbox " ,
            style: new TextStyle(
                fontWeight: FontWeight.w300 ,
                fontSize: 25.0
            ),),),



        //------------------ App bar -----------------------------------------------------------------
        body: new Container( width: 300.0,
          child: new Column(
            children: <Widget>[

//              new Switch(value: value1, onChanged: M_onChanged1),
              new SwitchListTile(value: value2, onChanged: M_onChanged1,
                title: new Text("Anwer  shehat"),
                activeColor: Colors.red,
                secondary: new Icon(Icons.desktop_mac),
                subtitle: new Text("Welome to Flutter"),
              ),



            ],
          ),
        ),



      ),
    );
  }//------------------------------------------------------------------

  void M_onChanged1(bool value){
    setState(() {
      value1 = value;
    });
  }


}
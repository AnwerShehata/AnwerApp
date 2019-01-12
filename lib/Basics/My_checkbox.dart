import 'package:flutter/material.dart';

class My_checkbox extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_checkbox> {

  String name = "";
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;

  void onChangedValue1( bool value){
    setState(() {
      value1 = value;
      if(value1 == true){
        name = "anwer";
      }else{
        name = "";
      }
    });
  }
  void onChangedValue2( bool value){
    setState(() {
      value2 = value;
      if(value2 == true){
        name = "Ali";
      }else{
        name ="";
      }

    });
  }
  void onChangedValue3( bool value){
    setState(() {
      value3 = value;
      if(value3 == true){
        name = "Omer";
      }else{
        name = "";
      }
    });
  }
  void onChangedValue4( bool value){
    setState(() {
      value4 = value;
      if(value4 == true){
        name = "Mehmoud";
      }else{
        name = "";
      }
    });
  }
  void onChangedValue5( bool value){
    setState(() {
      value5 = value;
      if(value5 == true){
        name = "Ahmed";
      }else{
        name = "";
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: new AppBar(title: new Text("checkbox"),
            elevation: 0.0,
            leading: new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context,true);})
        ),

        body: Container(
            child:Column(  children: <Widget>[

              //============== Checkbox ==========================
              new Checkbox(value: value1, onChanged: onChangedValue1),
              new Checkbox(value: value2, onChanged: onChangedValue2 ),
              new CheckboxListTile(
                value: value3,
                onChanged: onChangedValue3 ,
                title: new Text("CheckboxListTile"),
                subtitle: new Text("subtitle Checkbox"),
                secondary: new Icon(Icons.weekend),
              ),

              //============== Text ============================
              Center(child: new Text("your Name :$name " , style: TextStyle(fontSize: 20 , color: Colors.red),)),
              new Divider(color: Colors.red, height: 40,),


              //============== Switch =========================
              new Switch(value: value4, onChanged: onChangedValue4),
              new SwitchListTile(value: value5,
                onChanged: onChangedValue5,
                title: new Text("SwitchListTile"),
                subtitle: new Text("subtitle"),
                activeColor: Colors.red,
              )



            ],
            )),


      ),
    );
  }
}
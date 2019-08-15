import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';

class my_SwitchListTil extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<my_SwitchListTil> {

  TextEditingController _food = new TextEditingController();
  String textval = "";

  bool _switchValue = false ;
  bool _switchValue2 = false ;

  void _onChangedswitch( bool va){
    setState(() {
      _switchValue = va ;

      if(_switchValue == true){
        textval = "Flutter" ;
      }else{
        textval = "" ;
      }
    });
  }

  void _onChangedswitch2( bool va){
    setState(() {
      _switchValue2 = va ;

      if(_switchValue2 == true){
        textval = "Dart" ;
      }else{
        textval = "" ;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          elevation: 0,
          title: Text("TextEditing"),
        ),


        body: Center(
          child: Column(
            children: <Widget>[

              new Text("Name : ${textval}", style: TextStyle(fontSize: 20 ,color: Colors.red)),
              
              new Switch(value: _switchValue,
                onChanged: _onChangedswitch,
                activeColor: Colors.red,
                activeTrackColor: Colors.amber,
              ),
              
              new SwitchListTile(
                  value: _switchValue2,
                  onChanged: _onChangedswitch2 ,
                title: Text("SwitchListTile"),
                subtitle: Text("onChangedswitch"),
                selected: _switchValue2,
                activeColor: Colors.teal,
              )


            ],
          ),
        )





      ),
    );
  }
}
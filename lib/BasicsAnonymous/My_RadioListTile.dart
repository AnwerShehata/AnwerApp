import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';

class My_RadioListTile extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_RadioListTile> {

  TextEditingController _food = new TextEditingController();
  String textval = "";

  var radio1 = 0;
  void _onChanged0(int val){
    setState(() {
      radio1 = val;
      textval = "Anwar";
    });
  }

  void _onChanged1(int val){
    setState(() {
      radio1 = val;
      textval = "Ali";
    });
  }

  void _onChanged3(int val){
    setState(() {
      radio1 = val;
      textval = "Omar";
    });
  }

  void _onChanged4(int val){
    setState(() {
      radio1 = val;
      textval = "Asma";
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
              
              new Radio(value: 0, groupValue: radio1, onChanged: _onChanged0),
              new Radio(value: 1, groupValue: radio1, onChanged: _onChanged1),
              
              new RadioListTile(
                  value: 5, groupValue: radio1,
                  onChanged: _onChanged3,
                  activeColor: Colors.amber,
//                dense: true,
                title: Text("Welcome to Flutter "),
                subtitle: Text("anwer shehata"),
                dense: false,
                secondary: Icon(Icons.adb),
                controlAffinity: ListTileControlAffinity.trailing,
                isThreeLine: true,
              ),

              new RadioListTile(
                  value: 6, groupValue: radio1,
                  onChanged: _onChanged4,
                  activeColor: Colors.red,
//                dense: true,
                title: Text("Welcome to Dart "),
                subtitle: Text("anwer shehata"),
                dense: false,
                secondary: Icon(Icons.print),
                controlAffinity: ListTileControlAffinity.trailing,
                isThreeLine: true,
              ),











            ],
          ),
        )





      ),
    );
  }
}
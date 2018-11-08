import 'package:flutter/material.dart';

class My_TextInput extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_TextInput> {
  String name = "";

  my_onChanged(String value) {
    setState(() {
      name = "$value ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        //---------------App Bar -------------------------------------
        appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: new Text("Text input"),
        ),

        //---------------App Bar -------------------------------------
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              
              new Padding(padding: EdgeInsets.all(40.0)),
              new Text(name),
              new Padding(padding: EdgeInsets.all(30.0)),

              new TextField(
                decoration: InputDecoration(
                  icon: new Icon(Icons.text_fields),
                  labelText: "Enter Your Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  fillColor: Colors.grey[300],
                ),
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                autocorrect: true,
                autofocus: true,
                onChanged: my_onChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
//------------------------------------------------------------------------------------------------------------------

}

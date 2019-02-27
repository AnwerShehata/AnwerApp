import 'package:flutter/material.dart';

class My_DatePicker extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DatePicker> {

  String _value = '';
  String _valueTwo = "";

  Future _selectDate() async{
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2017),
        lastDate: new DateTime(2030)
    );

    if(picked != null) setState(() {
      _value = picked.toString();
    });
  }

  void _onClicked(){
    setState(() {
      _valueTwo =new DateTime.now().toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(


        floatingActionButton: new FloatingActionButton(
            onPressed: _onClicked ,
          backgroundColor: Colors.red,
          mini: false,
          child: Icon(Icons.refresh),
        ),


        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 200,),
                Text("Value Date :  ${_value}"),
                SizedBox(height: 30),
                Text("Value Date : ${_valueTwo}"),
                new RaisedButton(onPressed: _selectDate ,child: Text("click me"),)
              ],
            ),
          ),
        ),



      ),
    );
  }
}
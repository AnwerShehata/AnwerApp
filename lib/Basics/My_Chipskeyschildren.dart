import 'package:flutter/material.dart';

class My_Chipskeyschildren extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Chipskeyschildren> {

  int counter = 0 ;
  List<Widget> _list = new List<Widget>();

  @override
  void initState() {
    super.initState();
    for(int i =0 ; i<5 ; i++){
      Widget child = _newItem(i);
      _list.add(child);
    }
  }

  void _onClicked(){
    Widget child = _newItem(counter);
    setState(() {
      _list.add(child);
    });
  }

  Widget _newItem(int i){
    Key key = new Key("item_${i}");
    Container child = new Container(
      key: key,
      padding: new EdgeInsets.all(10),
      child: new Chip(
        label: new Text("${i} Name here"),
        deleteIconColor: Colors.red,
        deleteButtonTooltipMessage: "Delete",
        onDeleted: ()=> _removeItem(key),
        avatar: new CircleAvatar(
          backgroundColor: Colors.grey[800],
          child: new Text(i.toString()),
        ),
      ),
    );
    return child;
  }

  void _removeItem(Key key){
    for(int i = 0; i < _list.length  ; i++){
      Widget child = _newItem(i);
      if(child.key == key){
        setState(() {
          _list.removeAt(i);
          print("Removing ${key.toString()}");
        });
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        floatingActionButton: new FloatingActionButton(onPressed: _onClicked ,child: Icon(Icons.add),),

        body: new Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children:_list,
            ),
          ),
        ),


      ),
    );
  }
}
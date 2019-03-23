import 'package:flutter/material.dart';
import './Constants.dart';
import 'package:fluttertoast/fluttertoast.dart';


class My_PopupMenuButton extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}


enum Animals{Cat, Dog, Bird, Lizard, Fish}

class _BirdState extends State<My_PopupMenuButton> {


  //هنا القائمة التي تظهر في جانب AppBar ======
  void choiceAction(String choice){
    switch(choice){
      case Constants.subscribe: {Fluttertoast.showToast(msg: "subscribe");}
      break;

      case Constants.setting: {Fluttertoast.showToast(msg: "setting");}
      break;

      case Constants.signOut: {Fluttertoast.showToast(msg: "signOut");}
      break;

      case Constants.Anwar: {Fluttertoast.showToast(msg: "Anwar");}
      break;
    }
  }


  Animals _selected = Animals.Cat;
  String _value = 'Make a Selection';
  List<PopupMenuEntry<Animals>> _items = new List<PopupMenuEntry<Animals>>();

  @override
  void initState() {
    for(Animals animal in Animals.values) {
      _items.add(new PopupMenuItem(
        child: new Text(_getDisplay(animal),),
        value: animal,
      ));
    }
  }

  void _onSelected(Animals animal) {
    setState((){
      _selected = animal;
      _value = 'You Selected :  ${_getDisplay(animal)}';
    });
  }

  String _getDisplay(Animals animal) {
    int index = animal.toString().indexOf('.');
    index++;
    return animal.toString().substring(index);
  }




  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //=======AppBar===============================
        appBar: AppBar(
          title: Text("Popup Menu Button"),
          elevation: 0,
          actions: <Widget>[
            //هنا القائمة التي تظهر في جانب AppBar ======
            PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context){
                return Constants.choices.map((String choice){
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),


        //=======body===============================
        body: new Container(
          padding: new EdgeInsets.all(30),
          child: new Center(
            child: Row(
              children: <Widget>[
                
                Text(_value),
                new PopupMenuButton(
                  child: new Icon(Icons.more_horiz),
                    onSelected: _onSelected,
                    itemBuilder: (BuildContext context ){
                    return _items;
                    }
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}

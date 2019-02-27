import 'package:flutter/material.dart';

class My_bottomNavigationBar2 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_bottomNavigationBar2> {

  List<BottomNavigationBarItem>  _items;
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: Icon(Icons.phone) ,title: Text("phone")));
    _items.add(new BottomNavigationBarItem(icon: Icon(Icons.shopping_cart) ,title: Text("shopping")));
    _items.add(new BottomNavigationBarItem(icon: Icon(Icons.star) ,title: Text("star")));
    _items.add(new BottomNavigationBarItem(icon: Icon(Icons.settings) ,title: Text("settings")));
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //====bottomNavigationBar===============================================
        bottomNavigationBar: BottomNavigationBar(
          items: _items,
          type: BottomNavigationBarType.fixed,      // لاظهار باقي العناصر التي تم اختفائها
          currentIndex: _index,
          fixedColor: Colors.blue,
          onTap: (int item){
            setState(() {
              _index = item;
              _value = "${_index.toString()}";
              switch(item){
                //عند الضغط علي العنصر الاول  الذي يحمل رقم 0 سوف يتم تنفيذ الكود التالي
                case 0:{setState(() { _value = "Anwar"; });}
                  break;

              //عند الضغط علي العنصر الاول  الذي يحمل رقم 1 سوف يتم تنفيذ الكود التالي
                case 1:{setState(() { _value = "shehata"; });}
                  break;

              //عند الضغط علي العنصر الاول  الذي يحمل رقم 2 سوف يتم تنفيذ الكود التالي
                case 2:{setState(() { _value = "Ali"; });}
                  break;

              //عند الضغط علي العنصر الاول  الذي يحمل رقم 3 سوف يتم تنفيذ الكود التالي
                case 3:{setState(() { _value = "Gmail"; });}
                  break;
              }
            });
          },
        ),


        //====body===============================================
        body: Center(child: Text("is Index : ${_value}",style: TextStyle(fontSize: 25),),),


      ),
    );
  }
}
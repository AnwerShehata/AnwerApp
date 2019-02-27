import 'package:flutter/material.dart';

class My_bottomNavigationBar extends StatelessWidget{

  List<BottomNavigationBar> _items;
  String _value = "";
  int _index = 0;


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        backgroundColor: Colors.grey[200],


        // -------------- App Bar -----------------------------------------------------------------
        appBar: new AppBar(
          centerTitle: true,
          title:  new Text("Navigation Bar"),
          elevation: 0,
        ),

/*

        // -------------- Bbottom Navigation Bar --------------------------------------------
        bottomNavigationBar: new BottomNavigationBar(items:
        [
                      new BottomNavigationBarItem(icon: new Icon
                        (Icons.thumb_up,color: Colors.blue,), title: new Text("sound",style: new TextStyle(color: Colors.blue),)),

                      new BottomNavigationBarItem(icon: new Icon
                        (Icons.tap_and_play,color: Colors.amber,), title: new Text("sound",style: new TextStyle(color: Colors.amber),)),

                      new BottomNavigationBarItem(icon: new Icon
                        (Icons.filter,color: Colors.purple,), title: new Text("sound",style: new TextStyle(color: Colors.purple),)),

                      new BottomNavigationBarItem(icon: new Icon
                        (Icons.add_shopping_cart , color: Colors.green,), title: new Text("shopping" , style: new TextStyle(color: Colors.green),)),
        ],

          type: BottomNavigationBarType.fixed,            // لاظهار باقي العناصر التي تم اختفائها
          fixedColor: Colors.red,
          onTap: (int x)=> debugPrint("index $x"),
          iconSize:25.0,

        ),


*/






        body: Container(
        ),



      ),
    );
  }

}
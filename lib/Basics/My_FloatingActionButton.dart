
import 'package:flutter/material.dart';


class My_FloatingActionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //------------------ App bar -----------------------------------------------------------------
        appBar:  new AppBar(
          centerTitle: true,
          elevation: 0,
          title: new Text("Floating Action Button" ,
            style: new TextStyle(
              fontWeight: FontWeight.w300 ,
              fontSize: 25.0
          ),),),




        //------------------ floating Action Buttonr -----------------------------------------------------------------
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.add),
          onPressed: () {},
          elevation: 0.0,
        ),


        bottomNavigationBar: BottomAppBar(
          elevation:0,
          color: Colors.amber,
          shape: CircularNotchedRectangle() ,
          notchMargin:7,
          child: Container(
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.home), onPressed: () {}),
                IconButton(icon: Icon(Icons.volume_up), onPressed: () {},),
              ],
            ),
          ),
        ),






      ),
    );
  }
}
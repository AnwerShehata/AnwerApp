import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class My_NotificationAlertDialog extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_NotificationAlertDialog> {

  //-- Method change name=====================================
  String nameDialog= "";
  void ChangeName(String name){
    setState(() {
      nameDialog=name;
    });
  }





  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        key: _ScaffoldState,

        // ------- App Bar ------------------------------------------------------------------------
        appBar:  new AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: new Text("Notification Dialog Alert"),),



        // ------- body ------------------------------------------------------------------------
        body:  Container(
          padding: EdgeInsets.only(top: 30.0),
          child: Column(children: <Widget>[

            //Container 1 ==============
            new Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  new RaisedButton(
                    padding: EdgeInsets.only(left: 50.0 , right: 50.0),
                    textColor: Colors.blueAccent.shade700,
                    elevation: 0.0,
                    color: Colors.greenAccent,
                    onPressed: _neverSatisfied ,child: new Text("Alert Dialog"),),

                  new RaisedButton(
                    padding: EdgeInsets.only(left: 45.0 , right: 45.0),
                    textColor: Colors.white,
                    elevation: 0.0,
                    color: Colors.redAccent,
                    onPressed: showButtonSheet ,child: new Text("Button Sheet"),),

                  new RaisedButton(
                    padding: EdgeInsets.only(left: 45.0 , right: 45.0),
                    textColor: Colors.red.shade800,
                    elevation: 0.0,
                    color: Colors.amber,
                    onPressed: _simpleDialog ,child: new Text("Simple Dialog"),),

                   new RaisedButton(
                    padding: EdgeInsets.only(left: 55.0 , right: 55.0),
                    textColor: Colors.white,
                    elevation: 0.0,
                    color: Colors.deepPurple,
                    onPressed: _showSnackBars,child: new Text("SnackBars"),),

                ],
            ),
            ),


            //Container2  ==============
            new Container(
              padding: EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(nameDialog, style: new TextStyle(fontSize: 30.0 , color: Colors.red),)
                ],),),



          ],),
        ),


      ),
    );
  }
  /*
  *
  *
  *
  *
  *
  */
  //-------------- Code Alert Dialog Example1  ----------------------------------------------------
  Future<Null> _neverSatisfied() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Welcom to First App'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('You will never be satisfied.'),
                new Text('You\’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  //-------------- Code show Button Shett  ----------------------------------------------------
  void showButtonSheet(){
    showModalBottomSheet(context: context, builder: (BuildContext context)
    {
      return new Container( height: 200.0,
        color: Colors.yellow,
        padding: EdgeInsets.all(2.0),
        child:  new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text("هنا يمكن اضافه اي شيئ من المكونات " , style: new TextStyle(fontSize: 20.0 , fontFamily: "Cairo"),),
            new InkWell(onTap: ()=>Navigator.pop(context),
            child: new Icon(Icons.close,size: 30.0, color: Colors.red,),)
          ],

        ),
      );
    });
  }


//-------------- Code Simple Dialog  ----------------------------------------------------
  Future<Null> _simpleDialog() async {
    switch (await showDialog(context: context,
        builder: (BuildContext context)
        {
          return new SimpleDialog(
            title: const Text('هل تريد الخروج من البرنامج'),
            children: <Widget>[

              new SimpleDialogOption(
                onPressed: ()=> Navigator.pop(context,ChangeName("Yes")),
                child:  const Text("نعم "),
              ) ,

              new SimpleDialogOption(
                onPressed: ()=> Navigator.pop(context,ChangeName("No")) ,
                child: new Text("لا"),
              ),

              new SimpleDialogOption(
                onPressed: showButtonSheet,
                child:  const Text("تسجيل دخول من جديد "),
              )

            ],
          );
        }
    ))
    {
default:
    }
  }


  //-------------- Method show SnackBars  ----------------------------------------------------
  final GlobalKey<ScaffoldState> _ScaffoldState = new GlobalKey<ScaffoldState>();
  _showSnackBars() {
    print("Hello Anwar ");
    final snackbar = new SnackBar(content: new Text("Welcome To SnackBar", ),
      duration: new Duration(seconds: 3),    // هنا الفترة التي سوف تظهر فيها الرساله
      backgroundColor:Colors.deepPurple ,
      action: new  SnackBarAction(label: 'ok', onPressed: (){print("okk");}),
    );
    _ScaffoldState.currentState.showSnackBar(snackbar);
  }





}

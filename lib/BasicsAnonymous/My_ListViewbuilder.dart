import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';

class TextEditing extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TextEditing> {

  List users = [
    {  "User" : "anwer1",   "Age" : "111"  },
    {  "User" : "anwer2",   "Age" : "112"  },
    {  "User" : "anwer2",   "Age" : "113"  },
    {  "User" : "anwer3",   "Age" : "114"  },
    {  "User" : "anwer4",   "Age" : "115"  },
    {  "User" : "anwer5",   "Age" : "116"  },
    {  "User" : "anwer6",   "Age" : "117"  },
    {  "User" : "anwer7",   "Age" : "118"  },
    {  "User" : "anwer8",   "Age" : "119"  },
    {  "User" : "anwer9",   "Age" : "120"  },
    {  "User" : "anwer10",   "Age" : "121"  },
    {  "User" : "anwer11",   "Age" : "122"  },
    {  "User" : "anwer11",   "Age" : "122"  },
    {  "User" : "anwer11",   "Age" : "122"  },
    {  "User" : "anwer11",   "Age" : "122"  },
    {  "User" : "anwer11",   "Age" : "122"  },
    {  "User" : "anwer11",   "Age" : "122"  },
    {  "User" : "anwer11",   "Age" : "122"  },
    {  "User" : "anwer11",   "Age" : "122"  },
    {  "User" : "anwer11",   "Age" : "122"  },
  ];

  void _ontapClicked(BuildContext context , int index){
    String name = users[index]["User"];
    switch(name){
      case "anwer11" : print("anwer11");
      break;
      case "anwer9" : print("anwer9");
      break;
      case "anwer5" : print("anwer5");
      break;
    };
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("TextEditing"),
          ),

          body: ListView.builder(
            scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          reverse: false,
          itemCount: users.length,
          itemBuilder: (BuildContext content , index) {
            return _buildGestureDetector(context, index ,
              name: "${users[index]["User"]}",
              age: "${users[index]["Age"]}"
            );
            },
          ),


      )
      );
  }

  Widget _buildGestureDetector(BuildContext context, int index ,{
    String name ='',
    String age =''
    }) {
    return GestureDetector(
            onTap: (){_ontapClicked(context, index);},
            child: Container(
            color: Colors.teal[100],
            padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 10 ,vertical: 5),
            child: Column(
        children: <Widget>[
            new Text("User Name : ${name}"),
            SizedBox(height: 10),
            new Text("Your Age : ${age}"),
        ],),
            ),
          );
    }
}
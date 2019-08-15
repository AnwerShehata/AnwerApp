import 'package:flutter/material.dart';

class My_GridViewCount extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_GridViewCount> {

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
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          title: Text("textFildenew"),
          elevation: 0,
          centerTitle: true,
        ),

        body: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          reverse: false,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          padding: EdgeInsets.all(5),
          children: List.generate(users.length, (index){
            return Container(
              color: Colors.teal[100],
              child: Align(alignment: Alignment.center,
              child: Text(' ${users[index]['User']} - ${users[index]['Age']}')));
          }),
        ),



      ),
    );
  }
}
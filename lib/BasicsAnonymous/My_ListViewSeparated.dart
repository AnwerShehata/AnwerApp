import 'package:flutter/material.dart';

class textFildenew extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<textFildenew> {

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

        //=ListView.separated  هيا تقوم بعمل فاصل بين كل عنصر  ==========
        body: ListView.separated(
            itemBuilder: (BuildContext context , index){
              return Container(
                color: Colors.teal[100],
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  padding: EdgeInsets.symmetric(horizontal: 50 , vertical: 10),
                  child: Text("${users[index]['User']} " , textAlign: TextAlign.center,));
            },
            separatorBuilder: (BuildContext context , index){
              // هنا يقوم بعمل عنصر اخر تحت العنصر الرئيسي  ويمكن ان تستخدم اي ويدجت
              return Divider(color: Colors.red,);
            },
            itemCount: users.length
        )


      ),
    );
  }
}
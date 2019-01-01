      import 'package:flutter/material.dart';
      import 'package:firebase_database/firebase_database.dart';
      import './My_ListViewStudent.dart';
      import '../model/Student.dart';
      import 'package:anwerapp/Tools/app_tools.dart';

      class My_StudentInformation extends StatefulWidget {
        final Student student;
        My_StudentInformation(this.student);
      _BirdState createState() => new _BirdState();
      }


      class _BirdState extends State<My_StudentInformation> {
      @override
      Widget build(BuildContext context) {
      return new MaterialApp(
        theme: new ThemeData(fontFamily: "Cairo"),
        debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //-----------AppBar----------------------------------------
        appBar: new AppBar(
          title: new Text("Student Information"),
          elevation: 0,
          centerTitle: true,
          leading: new IconButton(icon: new Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context); }),
        ),

        body: ListView(
          children: <Widget>[
            new Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  new Text(" Name : ${widget.student.name}" , style: TextStyle(fontSize: 20),),
                  new Text(" Age : ${widget.student.age}" , style: TextStyle(fontSize: 20),),
                  new Text(" City : ${widget.student.city}" , style: TextStyle(fontSize: 20),),
                  new Text("department : ${widget.student.department}" , style: TextStyle(fontSize: 20),),
                  new Text("description : ${widget.student.description}" , style: TextStyle(fontSize: 20),),

                ],
              ),
            )

          ],
        ),



      ),
      );
      }
      }
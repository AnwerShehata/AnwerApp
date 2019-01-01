      import 'package:flutter/material.dart';
      import 'package:firebase_database/firebase_database.dart';
      import 'My_StudentScreen.dart';
      import '../model/Student.dart';
      import 'dart:async';
      import 'dart:io';
      import './My_StudentInformation.dart';


      class My_ListViewStudent extends StatefulWidget {
      _BirdState createState() => new _BirdState();
      }

      final studentReference =FirebaseDatabase.instance.reference().child("student");

      class _BirdState extends State<My_ListViewStudent> {

        List<Student> itmes;
        StreamSubscription<Event>  _onStudentAddSubscription;
        StreamSubscription<Event>  _onStudentChangedSubscription;

        // عند فتح التطبيق سوف ينفذ هذا الكود
        @override
        void initState() {
          super.initState();
          itmes = new List();
          _onStudentAddSubscription = studentReference.onChildAdded.listen(_onStudentAdd);
          _onStudentAddSubscription = studentReference.onChildChanged.listen(_onStudentUpdated);
        }

        // عند اغلاق التطبيق سوف ينفذ هذا الكود
        @override
          void dispose() {
          super.dispose();
          _onStudentAddSubscription.cancel();
          _onStudentChangedSubscription.cancel();
          }

      @override
      Widget build(BuildContext context) {
      return new MaterialApp(
        theme: new ThemeData(fontFamily: "Cairo"),
        debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //-----------floatingActionButton--------------------------
      floatingActionButton: new FloatingActionButton(
          onPressed: (){_createNewUser(context);},
          child: new Icon(Icons.add),
          elevation: 0,
        ),

        //-----------AppBar----------------------------------------
        appBar: new AppBar(
          title: new Text("Student"),
          elevation: 0,
          centerTitle: true,
        ),

        //--------Body --------------------------------
        body: Center(
          child: ListView.builder(
            itemCount: itmes.length,
              itemBuilder: (context , position){
              return new Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Container( color: Colors.grey.shade100,
                      child: new Row(

                        children: <Widget>[
                          new Expanded(flex: 3,
                            child: new ListTile(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder:
                                  (context)=> My_StudentInformation(Student(null, '${itmes[position].name}', '${itmes[position].age}', '${itmes[position].city}', '${itmes[position].department}', '${itmes[position].description}'))));},
                            title: Text('${itmes[position].name}'),
                            subtitle: Text('${itmes[position].department}'),
                            leading: new Column(
                              children: <Widget>[
                                new CircleAvatar(child: Text("${position +1}"),),
                              ],),),),

                          new Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Expanded(child: new IconButton(icon: Icon(Icons.edit , color: Colors.blue,),
                                      onPressed: ()=> _navigateToStudent(context, itmes[position] ))),
                                  Expanded(child: new IconButton(icon: Icon(Icons.delete , color: Colors.red,),
                                      onPressed: ()=> _deleteStudent(context, itmes[position],position))),
                                ],),))],),),),
                  Divider(),
                ],
              );

              }),
        ),


      ),
      );
      }

        //======== Function Add=================
        void _onStudentAdd(Event event){
          setState(() {
            itmes.add(new Student.fromSnapShot(event.snapshot));
          });
      }

        //======== Function Updated =============
        void _onStudentUpdated(Event event){
          var oldStudentValue  =itmes.singleWhere((student)=> student.id == event.snapshot.key);
        setState(() {
          itmes[itmes.indexOf(oldStudentValue)] = new Student.fromSnapShot(event.snapshot);
        });
      }

        //======== Function Delete ==============
        void _deleteStudent(BuildContext context, Student student,int position)async{
          await studentReference.child(student.id).remove().then((_){
            setState(() {
              itmes.removeAt(position);
            });
          });
        }

        //======== Function navigate ===============
        void _navigateToStudent(BuildContext context, Student student)async{
          await Navigator.push(context, MaterialPageRoute(builder: (context) => My_StudentScreen(student)));
      }

        //======== Function create New Student ===============
        void _createNewUser(BuildContext  context)async{
        await Navigator.push(context, MaterialPageRoute(builder: (context) => My_StudentScreen(Student(null, '', '', '', '', ''))));
      }


      }



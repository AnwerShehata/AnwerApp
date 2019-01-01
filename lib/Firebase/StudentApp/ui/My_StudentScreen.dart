      import 'package:flutter/material.dart';
      import 'package:firebase_database/firebase_database.dart';
      import './My_ListViewStudent.dart';
      import '../model/Student.dart';
      import 'package:anwerapp/Tools/app_tools.dart';

      class My_StudentScreen extends StatefulWidget {
        final Student student;
        My_StudentScreen(this.student);
      _BirdState createState() => new _BirdState();
      }

      final studentReference =FirebaseDatabase.instance.reference().child("student");
      final scaffoldKey = new GlobalKey<ScaffoldState>();


      class _BirdState extends State<My_StudentScreen> {
        TextEditingController _nameController;
        TextEditingController _ageController;
        TextEditingController _cityController;
        TextEditingController _departmentController;
        TextEditingController _descriptionController;


         @override
          void initState() {
            super.initState();
            _nameController  =  new TextEditingController(text:  widget.student.name);
            _cityController =  new TextEditingController(text:  widget.student.city);
            _ageController =  new TextEditingController(text:  widget.student.age);
            _departmentController =  new TextEditingController(text:  widget.student.department);
            _descriptionController  =  new TextEditingController(text:  widget.student.description);
          }

          void _onPressedFlatButton(){
            // اذا كانت البيانات ممتلئة نفذ هذا الكود
            if(widget.student.id != null){
              studentReference.child(widget.student.id).set({
                'name' : _nameController.text,
                'age' : _ageController.text,
                'city' : _cityController.text,
                'department' : _departmentController.text,
                'description' : _descriptionController.text
              }).then((_){Navigator.pop(context,true);});
              // هنا في حالة else سوف نستخدم if اخري بداخلها
            }else{
              // هنا نقول اذا كانت البيانات فارغة سوف تظهر لك الرسالة التالية ولا يتم رفع البيانات
              if(
              _nameController.text.trim().isEmpty ||
                  _cityController.text.trim().isEmpty  ||
                  _ageController.text.trim().isEmpty ||
                  _departmentController.text.trim().isEmpty ||
                  _descriptionController.text.trim().isEmpty
              ){
                my_showSnackBar("عزيزي الطالب يجب اكمال جميع البينات ", scaffoldKey);
                return ;
              }else{
                // وهنا نقول اذا تم ملء جميع البيانات قم برفعها
                studentReference.push().set({
                  'name' : _nameController.text,
                  'age' : _ageController.text,
                  'city' : _cityController.text,
                  'department' : _departmentController.text,
                  'description' : _descriptionController.text
                }).then((_){Navigator.pop(context,true);});
              }
            }

          }

      @override
      Widget build(BuildContext context) {
      return new MaterialApp(
        theme: new ThemeData(fontFamily: "Cairo"),
        debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        key: scaffoldKey,

        //-----------AppBar----------------------------------------
        appBar: new AppBar(
          title: new Text("Admen Student"),
          elevation: 0,
          centerTitle: true,
          leading: new IconButton(icon: new Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context); }),
        ),

        body: ListView(
          children: <Widget>[
            SizedBox(height: 30),
            my_TextField(horizontal: 20 ,vertical: 5, Radius: 5,labelText: "Name" , controllers: _nameController , TextInput: TextInputType.text),
            my_TextField(horizontal: 20 ,vertical: 5, Radius: 5,labelText: "age" , controllers: _ageController,TextInput: TextInputType.text),
            my_TextField(horizontal: 20 ,vertical: 5, Radius: 5,labelText: "city" , controllers: _cityController,TextInput: TextInputType.text),
            my_TextField(horizontal: 20 ,vertical: 5, Radius: 5,labelText: "department" , controllers: _departmentController ,TextInput: TextInputType.text),
            my_TextField(horizontal: 20 ,vertical: 5, Radius: 5,labelText: "description" , controllers: _descriptionController , maxLines: 6),



            //===== هذا كود زد الاضافة والتعديل FlatButton  ==============
            FlatButton(onPressed: (){_onPressedFlatButton();},
              // اذا كانت البيانات فارغة سوف يظهر Add
              //اما اذا الكانت البيانات ممتلئة سوف يظهر Update
              child: (widget.student.id == null) ? Text('Add') : Text('Update'),
            )
          ],
        ),



      ),
      );
      }
      }

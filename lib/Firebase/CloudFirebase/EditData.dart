  import 'package:flutter/material.dart';
  import 'package:anwerapp/Tools/app_tools.dart';
  import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  import 'package:google_sign_in/google_sign_in.dart';
  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';
  import 'package:anwerapp/Tools/app_tools.dart';

  class EditData extends StatefulWidget {
    final String title;
    final String note;
    final DateTime duedate;
    final index;
  const EditData({Key key,this.title, this.note, this.duedate ,this.index}) : super(key: key);
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<EditData> {

    TextEditingController controllerTitle;
    TextEditingController controllerNote;
    DateTime _dueDate;
    String _dateText ;
    String NameTask ;
    String Note ;

    //  ===== هذ الدالة المسئولة عن تحديد التاريخ
    Future<Null> _selectDueDate(BuildContext context) async {
      final picked = await showDatePicker(
          context: context,
          initialDate: _dueDate,
          firstDate: DateTime(2018),
          lastDate: DateTime(2080)
      );
      if(picked != null){
        setState(() {
          _dueDate =picked;
          _dateText = "${picked.day} / ${picked.month} /${picked.year}";
        });
      }
    }


    //  ===== عند فتح التطبيق سوف يتم تنفيذ الكود التالي
    @override
    void initState() {
      super.initState();
      _dueDate = widget.duedate;
      _dateText = "${_dueDate.day} / ${_dueDate.month} /${_dueDate.year}";
      NameTask = widget.title;
      Note = widget.note;
      controllerNote = new TextEditingController(text: widget.note);
      controllerTitle = new TextEditingController(text: widget.title);
    }

    //==== هنا الدالة التي تقوم  بتحديث البيانات
    void _editNote(){
      Firestore.instance.runTransaction((Transaction transaction) async {
        DocumentSnapshot snapshot = await transaction.get(widget.index);
        await transaction.update(snapshot.reference, {
          "title" : NameTask,
          "note" : Note,
          "Data" : _dueDate,
        });
      });
      Navigator.pop(context);
    }




    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  new Scaffold(

          //-----------------AppBar---------------------------------
          appBar: AppBar(
            title: Text("Edit Task"),
            elevation: 0,
            centerTitle: true,
            leading: new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
          ),


          //-----------------Body---------------------------------
          body: ListView(
            children: <Widget>[

              //===== Text new Task ======
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
                child: TextField(
                  controller: controllerTitle,
                  onChanged: (String str){setState(() {NameTask = str;});},
                  decoration: InputDecoration(
                      labelText: "Title",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
              ),

              //===== Text Note  ======
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: controllerNote,
                  maxLines: 10,
                  onChanged: (String str){setState(() {Note = str;});},
                  decoration: InputDecoration(
                      labelText: "Note",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
              ),


              //===== Due Date ======
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Icon(Icons.date_range),
                        new Text("Due Date" , style: TextStyle(fontSize: 18 ,color: Colors.grey),),
                      ],
                    ),
                    InkWell(
                        onTap: (){_selectDueDate(context);},
                        child: new Text(_dateText , style: TextStyle(fontSize: 20 ,color: Colors.blue),)),
                  ],
                ),
              ),


              //===== Button update and ClearDate ======
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 20),
                child: new Row(
                  children: <Widget>[
                    my_FlatButtonIcon(textButton: "ِUpdata" ,icon: Icons.cloud_upload,colorIcon: Colors.blue,
                        radiusButton: 5 ,colorText: Colors.blue,onPressed: (){_editNote();}
                    ),
                  ],
                ),
              )



            ],
          ),



        ),
      );
    }
  }

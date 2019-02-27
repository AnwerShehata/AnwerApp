import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:anwerapp/Tools/app_tools.dart';


class AddData extends StatefulWidget {
  final String email;
  const AddData({Key key, this.email}) : super(key: key);
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<AddData> {

  //===== هنا كود تحديد التاريخ
  DateTime _dueDate =new DateTime.now();
  String _dateText = "";
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

  // ====== هنا عند فتح التطبيق سوف يتم اظهار التاريخ
  @override
  void initState() {
    super.initState();
    _dateText = "${_dueDate.day} / ${_dueDate.month} /${_dueDate.year}";
  }

  String NameTask = "";
  String Note = "";
  TextEditingController taskController = new TextEditingController();
  TextEditingController noteController = new TextEditingController();


  //====== هنا اضافة البيانات الي Firebase
  void _addData(){
    Firestore.instance.runTransaction((Transaction transaction) async{
      CollectionReference reference = Firestore.instance.collection("Task");
      await reference.add({
        "email" : widget.email,
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
      theme: new ThemeData(fontFamily: "Cairo"),
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //-----------------AppBar---------------------------------
        appBar: AppBar(
          title: Text("Add Task"),
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
                onChanged: (String str){setState(() {NameTask = str;});},
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
            ),

            //===== Text Note  ======
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                maxLines: 10,
                onChanged: (String str){setState(() {Note = str;});},
                decoration: InputDecoration(
                    labelText: "Name",
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
                  my_FlatButtonIcon(textButton: "Uplod Data" ,icon: Icons.cloud_upload,colorIcon: Colors.blue,
                    radiusButton: 5 ,colorText: Colors.blue,onPressed: (){ _addData();}
                  ),
                  SizedBox(width: 20),
                  my_FlatButtonIcon(textButton: "Clear Data" ,icon: Icons.close,colorIcon: Colors.red,
                      radiusButton: 5 ,colorText: Colors.red,onPressed: (){_cleareData();}
                  ),
                ],
              ),
            )



          ],
        ),



      ),
    );
  }
  void _cleareData(){
    setState(() {
      noteController.clear();
      taskController.clear();
    });
  }
}

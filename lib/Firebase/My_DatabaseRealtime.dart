import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class My_DatabaseRealtime extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DatabaseRealtime> {
String myText  = null;
  final DocumentReference  documentReference= Firestore.instance.document("myData/People");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        //------- AppBar----------------------------------
      appBar: new AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: new Text("Database Realtime"),),


        //------- Body----------------------------------
        body: new ListView(
          padding: EdgeInsets.symmetric(horizontal: 90.0 ,vertical: 10.0),
          children: <Widget>[

            // Add Data   ========
            new RaisedButton(
                elevation: 0.0,
                color: Colors.deepOrangeAccent,
                child: new Text("Add Data " , style: TextStyle(color: Colors.white , fontSize: 20.0),),
                onPressed: _add,
            ),

            // Update  ========
            new RaisedButton(
                elevation: 0.0,
                color: Colors.purple,
                child: new Text("Update" , style: TextStyle(color: Colors.white , fontSize: 20.0),),
                onPressed: _update
            ),

            // Delete  ========
            new RaisedButton(
                elevation: 0.0,
                color: Colors.redAccent,
                child: new Text("Delete" , style: TextStyle(color: Colors.white , fontSize: 20.0),),
                onPressed: _delete,
            ),

            // Fetch  ========
            new RaisedButton(
                elevation: 0.0,
                color: Colors.lightBlue,
                child: new Text("Fetch" , style: TextStyle(color: Colors.white , fontSize: 20.0),),
                onPressed: _fetch,
            ),


            // هنا النص اذ كان فارغ لايظهر
            myText == null? new Container():new Text(myText,style: TextStyle(fontSize: 20.0),),





          ],
        ),





      ),
    );
  }

  // Method Add Data >>>>>>
  void _add(){
    Map<String,String> data = <String , String>{
      "Name" : "anwer shehata ",
      "Job" : "Flutter Developer App"
    };

    documentReference.setData(data).whenComplete((){
      print("Document Add");
    }).catchError((e) =>print(e));
  }

  // Method Delete Data >>>>>
  void _delete(){
    documentReference.delete().whenComplete((){
      print("Delete SuccessFully ");
    }).catchError((e) => print(e));
  }

  // Method update Data >>>>>
  void _update(){
    Map<String,String> data = <String , String>{
      "Name" : "anwer shehata update",
      "Job" : "Flutter Developer App update"
    };

    documentReference.updateData(data).whenComplete((){
      print("Document update");
    }).catchError((e) =>print(e));
  }



  // Method fetch Data >>>>>
// هنا يتم جلب البيانات
  void _fetch(){
    documentReference.get().then((datasnapshot){
      if(datasnapshot.exists) {
        setState(() {
          myText = datasnapshot.data['Name'];
        });
      }
  });
  }

}
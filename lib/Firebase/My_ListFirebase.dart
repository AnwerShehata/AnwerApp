import 'package:flutter/material.dart';
import 'package:anwerapp/Firebase/My_GoogleSignin.dart';
import 'package:anwerapp/Firebase/My_TestFirebase.dart';
import 'package:anwerapp/Firebase/My_DatabaseRealtime.dart';
class My_ListFirebase extends StatefulWidget {

  final String nameAppBar;
  const My_ListFirebase({Key key, this.nameAppBar}) : super(key: key);

  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ListFirebase> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        

        // --------- App Bar -----------------------------------------------------
        appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: new Text(" Firebase "),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),

        ),


        // --------- Body -----------------------------------------------------
        body: ListView(
          children: <Widget>[


            //=======Floating Action Button ===============
            new ListTile(
              title: new Text("Test Firebase"),
              subtitle: new Text("ربط التطبيق مع قاعدة بيانات "),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => My_TestFirebase()),);},
            ),
            new Divider(),


            //=======Floating Action Button ===============
            new ListTile(
              title: new Text(" Google SignIn "),
              subtitle: new Text("تسجيل الدخول باستخدام Gmail"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => My_GoogleSignin()),);},
            ),
            new Divider(),


            //=======Floating Action Button ===============
            new ListTile(
              title: new Text(" Database Realtime  "),
              subtitle: new Text(" اضافة وخذف وتعديل البيانات "),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => My_DatabaseRealtime()),);},
            ),
            new Divider(),


          ],
        ),
      ),
    );
  }
}
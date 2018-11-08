import 'package:flutter/material.dart';
import 'package:anwerapp/Basics/Data/My_DataThree.dart';
import 'package:anwerapp/Basics/Data/My_DataTwo.dart';

class My_DataOne extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DataOne> {
  var _username = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        //-------------- App bar -----------------------------------------------------
        appBar: new AppBar(
          backgroundColor: Colors.red.shade900,
          elevation: 0.0,
          centerTitle: true,
          title: new Text(
            "Data One1",
            style: new TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 30.0,
                color: Colors.yellow),
          ),
        ),

        body: new ListView(
          padding: EdgeInsets.only(top: 2.0),
          children: <Widget>[
            //========== Icons  ===============
            new Icon(
              Icons.account_circle,
              size: 200.0,
              color: Colors.blueGrey,
            ),

            //========== User Name ===============
            new ListTile(
              title: new TextField(
                keyboardType: TextInputType.text,
//                controller:_username, // ignore: argument_type_not_assignable
                decoration: InputDecoration(
                    icon: new Icon(Icons.account_box),
                    hintText: "User Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
              ),
            ),

            //========== Address ================
            new ListTile(
              title: new TextField(
                keyboardType: TextInputType.text,
//                controller: _Address,
                decoration: InputDecoration(
                    icon: new Icon(Icons.map),
                    hintText: "Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
              ),
            ),

            //========== Phone Number ================
            new ListTile(
              title: new TextField(
                controller: _username,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    icon: new Icon(Icons.phone),
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
              ),
            ),

            //========== Mail ================
            new ListTile(
              title: new TextField(
//                controller: _Mail,
                cursorColor: Colors.red,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    icon: Icon(Icons.mail_outline),
                    hintText: "Mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
              ),
            ),

            new ListTile(
              title: new RaisedButton(
                child: new Text("Login ",
                    style: new TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.w300)),
                color: Colors.redAccent.shade700,
                textColor: Colors.black12,
                elevation: 3.0,
                padding: EdgeInsets.all(10.0),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),

                // عند الضعط علي الزر يتم اخذ البيانات من هذا الصفحة والانتقال بها الي صفحة اخري
                onPressed: () {
                  var OnClickButtin = new MaterialPageRoute(
                    builder: (BuildContext context) => new My_DataThree(
                        value: _username
                            .text), //   هنا يتم تحول النص الذي سوف يتم انتقالة ال  username.text
                  );
                  Navigator.of(context).push(OnClickButtin);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

class My_loginpage extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_loginpage> {

  final scaffoldKey = new GlobalKey<ScaffoldState>();

  var _UserName = new TextEditingController();
  var  _password = new TextEditingController();
  String UserInfo = "";

  void ClearData(){
    setState(() {
      _UserName.clear();
      _password.clear();
    });
  }

  void _onLogin(){
    setState(() {

      if(_UserName.text.trim().isEmpty ){
        my_showSnackBar("Enter User Name", scaffoldKey);
        UserInfo = "";
        return;
      }
      if(_password.text.trim().isEmpty){
        my_showSnackBar("Enter your Password", scaffoldKey);
        UserInfo = "";
        return;
      }else{
        UserInfo = "Welco ${_UserName.text}";
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        key: scaffoldKey,


        //--------------------- AppBar----------------------------
        appBar: new AppBar(
          title: new Text("Login page "),
          elevation: 0.0,
          backgroundColor: Colors.purple,
        ),

        //--------------------- Body----------------------------
        body: ListView(
          children: <Widget>[
            
            new Icon(Icons.account_circle ,size: 100, color: Colors.grey,),
            SizedBox(height: 50),

            my_TextField_Icon(
              controllers: _UserName,
              hintText: "User Name ",
              Radius: 20, horizontal: 40,vertical: 2,
              prefixIcon: Icons.account_circle,
            ),

              my_TextField_Icon(
              controllers: _password ,
              hintText: "Password ",
              Radius: 20, horizontal: 40,vertical: 10,
              prefixIcon: Icons.lock,
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                my_Button(
                    onBtnclicked: (){_onLogin();},
                    textButton: "Login" , horizontal:3 , radiusButton: 5, colorButton: Colors.purple , heightButton: 30
                ),
                my_Button(
                    onBtnclicked: (){ClearData();},
                    textButton: "Clear" , horizontal: 3 , radiusButton: 5, colorButton: Colors.greenAccent.shade700 ,heightButton: 30
                ),
              ],
            ),

            SizedBox(height: 30),
            Center(child: new Text(UserInfo , style: TextStyle(fontSize: 20),))


            
          ],
        ),



      ),
    );
  }
}
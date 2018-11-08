import 'package:flutter/material.dart';
import 'package:anwerapp/Ui/My_Ui.dart';

class My_designLogin extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_designLogin> {

  final TextEditingController _userName = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  void _onClear(){
    setState(() {
      _userName.clear();
      _password.clear();
    });
  }

  void nextpage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> My_Ui()));
  }

  String nameAcount = "";
  void _onLogIn(){
    setState(() {
      if(_userName.text.trim().isEmpty && _password.text.trim().isEmpty){
        nameAcount = "please enter your name and password";
      }else{
        nameAcount = "Welcome :${_userName.text}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        appBar: new AppBar(
          centerTitle: true,
          title: new Text("Design Login "),),

        body: new ListView(
          padding: EdgeInsets.all(0.0),
            children: <Widget>[

              new Image.asset("img/female.jpg" ),
              
              new Padding(padding: EdgeInsets.all(15.0)),

              new Container(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                     new TextField(
                       style: new TextStyle(color: Colors.deepPurple.shade900 ),
                       controller: _userName,
                       decoration: InputDecoration(
                         fillColor: Colors.red,
                         labelText: "User Name ",
                         hintText: "User Name ",
                         icon: Icon(Icons.account_circle , color: Colors.deepPurpleAccent, size: 40.0,),
                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))
                       ),
                     ),

                     new Padding(padding: EdgeInsets.all(10.0)),

                     new TextField(
                       controller: _password,
                       keyboardType: TextInputType.number,
                       obscureText: true,  // اذا كنت تريد عمل password هذا يخفي الارقام
                       decoration: InputDecoration(
                         fillColor: Colors.red,
                         labelText: "Password",
                         hintText: "Password",
                           icon: Icon(Icons.lock_outline , color: Colors.deepPurpleAccent, size: 40.0,),
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))
                       ),
                     ),
                  ],
                ),
              ),

              new Padding(padding: EdgeInsets.all(10.0)),

              new Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    Expanded(

                      child: new Container( height:50.0,
                        child: new FlatButton( shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                            textColor: Colors.white,
                            onPressed: _onLogIn,
                            color: Colors.deepPurpleAccent,
                            child: new Text("LogIn")),
                        margin: EdgeInsets.only(left: 10.0,right: 5.0),

                      ),
                    ),

                    new Container(
                      child: new FlatButton(
                        textTheme: ButtonTextTheme.accent,
                          onPressed:_onClear,
                          textColor: Colors.white,
                          color: Colors.deepPurpleAccent,
                          child: new Text("Clear")),
                      margin: EdgeInsets.only(left: 10.0,right: 10.0),
                    ),

                    
                  ],
                ),
              ),
              
              new Padding(padding: EdgeInsets.all(10.0)),
              new Container(
                child: Column(
                  children: <Widget>[
                    new Text(nameAcount),
                  ],
                ),
              )

            ],
        ),
      ),
    );
  }
}
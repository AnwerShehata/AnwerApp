import 'package:flutter/material.dart';
import '../utils/My_UserToDatabase.dart';
import 'package:anwerapp/Tools/app_tools.dart';
import 'package:firebase_auth/firebase_auth.dart';


class My_registerpage extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_registerpage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(fontFamily: "Cairo"),
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //--------AppBar--------------------------
        appBar: AppBar(
          title: Text("Regiester"),
          elevation: 0,
          backgroundColor: Colors.redAccent.shade700,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
        ),


        //---------------- Body----------------------
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
        Container(
        child: Column(
        children: <Widget>[

        SizedBox(height:30),
        CircleAvatar(child: Icon(Icons.account_circle , size: 70,), maxRadius: 70, backgroundColor: Colors.brown,),
        Text("انشاء حساب جديد " , style: TextStyle(fontSize: 30)),

        SizedBox(height:30),
        my_TextField_Icon(hintText: "Email" ,Radius: 10 , horizontal: 20 , prefixIcon: Icons.email ,
            controllers: _emailController, TextInput: TextInputType.text),

        SizedBox(height: 5),
        my_TextField_Icon(hintText: "Password" ,Radius: 10 , horizontal: 20 , prefixIcon: Icons.lock ,
            controllers: _passwordController ,TextInput: TextInputType.text),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 30),
          child: new Row(
            children: <Widget>[

              //هنا زر تسجيل الدخول ===========================================
              Expanded(flex: 2,
                child: my_FlatButton(horizontal: 3, textButton: " انشاء حساب جديد " ,radiusButton: 10 , splashColor: Colors.amber,
                    onPressed: (){
                      FirebaseAuth.instance.createUserWithEmailAndPassword
                        (email: _emailController.text, password: _passwordController.text ,)
                          .then((SingedUser){UserToDatabase().addNewUser(SingedUser, context);})
                          .catchError((e){print(e);});
                    }
                ),
              ),

              //هنا اذا كنت تريد تفريغ البيانات ===========================================
              Expanded(flex:1,
                child: my_ButtonIcon(horizontal: 3, textButton: "حذف" ,radiusButton: 10, icon: Icons.delete, colorButton: Colors.red,
                    onPressed: (){_clearData();}
                ),
              ),
            ],
          ),
        )


        ],
      ),
    ),
          ],

        ),



      ),
    );
  }

  void _clearData(){
    setState(() {
      _emailController.clear();
      _passwordController.clear();
    });
  }

}
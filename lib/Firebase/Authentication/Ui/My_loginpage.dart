    import 'package:flutter/material.dart';
    import 'package:firebase_database/firebase_database.dart';
    import 'package:anwerapp/Tools/app_tools.dart';
    import 'package:firebase_auth/firebase_auth.dart';
    import 'package:google_sign_in/google_sign_in.dart';
    import './My_registerpage.dart';
    import './HomeAuth.dart';
    import 'package:font_awesome_flutter/font_awesome_flutter.dart';

    class My_loginpage extends StatefulWidget {
      _BirdState createState() => new _BirdState();
    }

    class _BirdState extends State<My_loginpage> {

      GoogleSignIn _googleSignIn = GoogleSignIn();
      TextEditingController _emailController = new TextEditingController();
      TextEditingController _passwordController = new TextEditingController();

      // تسجيل الدخول باستخدام جوجل========
      void _SignIn(){
        _googleSignIn.signIn().then((value){
          value.authentication.then((googleKey){FirebaseAuth.instance.signInWithGoogle(
                idToken: googleKey.idToken,
                accessToken: googleKey.accessToken)
              .then((user){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeAuth()));
            }).catchError((e){});
          });
        });
      }

      // تسجيل الدخول الايميل والباسورد========
      void _SigninEmalPassword(){
        FirebaseAuth.instance.signInWithEmailAndPassword
          (email: _emailController.text, password: _passwordController.text).then((FirebaseUser user){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeAuth()));
        }).catchError((e){print(e);});
      }




      @override
      Widget build(BuildContext context) {
        return new MaterialApp(
          theme: new ThemeData(fontFamily: "Cairo"),
          debugShowCheckedModeBanner: false,
          home:  new Scaffold(

            //---------------- AppBar----------------------
            appBar: new AppBar(
              title:Text("Login Page"),
              elevation: 0,
              backgroundColor: Colors.redAccent.shade700,
              leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
            ),

            //---------------- Body----------------------
            body: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
              new  Container(
            child: Column(
            children: <Widget>[


            SizedBox(height:30),
            CircleAvatar(child: Icon(Icons.account_circle , size: 70,), maxRadius: 70, backgroundColor: Colors.brown,),
            SizedBox(height: 5),
            Text("تسجيل الدخول " , style: TextStyle(fontSize: 30)),

            //================TextField ِEmail==================================
            SizedBox(height:30),
            my_TextField_Icon(hintText: "Email" ,Radius: 15 , horizontal: 20 , prefixIcon: Icons.email ,
                controllers: _emailController, TextInput: TextInputType.text),

            //================TextField Password ==================================
            SizedBox(height: 10),
            my_TextField_Icon(hintText: "Password" ,Radius: 15 , horizontal: 20 , prefixIcon: Icons.lock ,
                controllers: _passwordController ,TextInput: TextInputType.text),

            // هنا سوف تنتقل الي صفحة تسجيل حساب جديد ===================================
            SizedBox(height: 10),
            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_registerpage()));},
                child: Text(" انشاء حساب جديد اضغط هنا" ,style: TextStyle(color: Colors.blue.shade600 , fontSize: 18))),


            // زر تسجيل الدخول وزر تفريغ البيانات==========================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 30),
              child: new Row(
                children: <Widget>[
                  //هنا زر تسجيل الدخول ===========================================
                  Expanded(flex: 2,
                    child: my_FlatButton(horizontal: 3, textButton: " تسجيل " ,radiusButton: 10 , splashColor: Colors.amber,
                        onPressed: (){_SigninEmalPassword();}
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
            ),


            //تسجيل الدخول بستخدام جوجل ==========================
              my_FlatButtonIcon(
                textButton: "SignIn wth", icon: FontAwesomeIcons.google,
                colorIcon: Colors.red, colorText: Colors.red,
                onPressed: (){_SignIn();}
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
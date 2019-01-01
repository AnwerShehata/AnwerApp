import 'package:flutter/material.dart';
import 'package:anwerapp/Basics/My_ListBasics.dart';
import 'package:anwerapp/HomeMesterApp.dart';
import 'package:anwerapp/Ui/My_ListUI.dart';
import 'package:anwerapp/Application/My_ListApplication.dart';
import 'package:anwerapp/Firebase/My_ListFirebase.dart';



class HomeMesterApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<HomeMesterApp> {

  String _NameUiDesign = "Flutter Ui Design";
  String _NameBasics = "Flutter  Basics";
  String _NameAdvanced = "Flutter Advanced";
  String _NameAnimation = "Flutter Animation";
  String _NameFirebase = "Flutter Firebase";
  String _NameApplication = "Full application";

  @override
  Widget build(BuildContext context) {
    return new  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),


      home: new Scaffold(
//        backgroundColor: Color(0xFF0a013a),

        //-------- AppBar -------------------------------------------------
        appBar: new AppBar(
          title: new Text("HOME App"),
          elevation: 0.0,
          centerTitle: true,
//          backgroundColor: Colors.deepPurple.shade900,
        backgroundColor: Color(0xFF0a013a),
        ),


        //-------- Body -------------------------------------------------
        body: ListView(
          children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(60.0, 10.0, 20.0, 10.0),
            child: Column(
              children: <Widget>[
                
                _buildStackSections(context , title: _NameBasics , description: "امثلة علي الاساسيات" , myIcon: Icons.settings ,
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_ListBasics()));}
                ),

                _buildStackSections(context , title: _NameUiDesign , description: "امثلة على تصميم الصفحات" , myIcon: Icons.settings ,
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_ListUI()));}
                ),

                _buildStackSections(context , title: _NameAdvanced , description: "امثلة متقدمة في فلاتر" , myIcon: Icons.settings ,
//                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>()));}
                ),

                _buildStackSections(context , title: _NameFirebase , description: "ربط التطبيق بقواعد بيانات الفايربيس" , myIcon: Icons.settings ,
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_ListFirebase()));}
                ),

                _buildStackSections(context , title: _NameAnimation , description: "امثلة تطبيقة علي تحريك الانيميشن" , myIcon: Icons.settings ,
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_ListFirebase()));}
                ),

                _buildStackSections(context , title: _NameApplication , description: "تطبيقات كاملة" , myIcon: Icons.settings ,
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_ListApplication()));}
                ),



              ],
            ),
          ),
        ],
        ),

      ),
    );
  }

  Stack _buildStackSections(BuildContext context , {
    String namePage ,
    String title,
    String description,
    IconData myIcon,
    GestureTapCallback onTap,
     }) {
    return new Stack(
          alignment: Alignment.center,
            overflow: Overflow.visible,
            children: <Widget>[

              Positioned(
                child: InkWell(onTap: onTap,
                  child: new Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    padding: EdgeInsets.only(left: 80.0),
                    height: 140.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
//                      boxShadow: [ BoxShadow(blurRadius: 2.0 , color: Colors.black)],
                      gradient: LinearGradient(
                        colors: [Color(0xFF270062), Color(0xFF760271)],
//                        begin: FractionalOffset.topRight,
//                          end: FractionalOffset.bottomLeft,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(title, style: TextStyle(fontSize: 23.0 , fontWeight: FontWeight.bold , color: Colors.white),),
                        new Divider(color: Colors.white,),
                        new Text(description, style: TextStyle(color:Colors.amberAccent),),
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                left: -45.0,
                child: new Container(
                  height: 110.0, width: 110.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: LinearGradient(
                      colors: [Color(0xFF8c0286), Color(0xFF250050)],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                    ),
//                      boxShadow: [ BoxShadow(blurRadius: 7.0 , color: Colors.black)],
                  ),
                ),
              ),

              Positioned(
                left: -38.0,
                child: new Container(
                  height: 95.0, width: 95.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: LinearGradient(
                      colors: [Color(0xFF8c0286), Color(0xFF250050)],
                      begin: FractionalOffset.centerRight,
                      end: FractionalOffset.centerLeft,
                    ),
//                      boxShadow: [ BoxShadow(blurRadius: 1.0 , color: Colors.black)],
                  ),
                  child: Icon(myIcon, color: Colors.white, size: 40.0,),
                ),
              ),



            ],
          );
                                                }



}
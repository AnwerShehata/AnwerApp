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

  String _NameUiDesign = "flutter Ui Design";
  String _NameBasics = "flutter  Basics";
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
        backgroundColor: Color(0xFF0a013a),

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

           // Basics =============
                _buildStackSections(context, "/Basics", _NameBasics, "امثلة ", Icons.settings),
                _buildStackSections(context, "/Basics", _NameUiDesign, "امثلة على تصميم الصفحات ", Icons.settings),
                _buildStackSections(context, "/Basics", _NameAdvanced, "امثلة متقدمة في فلاتر ", Icons.settings),
                _buildStackSections(context, "/Basics", _NameAnimation, "امثلة تطبيقة علي تحريك الانيميشن  ", Icons.settings),
                _buildStackSections(context, "/Basics", _NameFirebase, "ربط التطبيق بقواعد بيانات الفايربيس  ", Icons.settings),
                _buildStackSections(context, "/Basics", _NameApplication, "تطبيقات كاملة ", Icons.settings),

            // Ui Design =============
            new Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[

                Positioned(
                  child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_ListUI(nameAppBar: _NameUiDesign,)));},
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
                          new Text(_NameUiDesign,style: TextStyle(fontSize: 23.0 , fontWeight: FontWeight.bold , color: Colors.white),),
                          new Divider(color: Colors.white,),
                          new Text("امثلة علي تصميم الصفحات " , style: TextStyle(color:Colors.amberAccent),),
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
                    child: Icon(Icons.palette , color: Colors.white, size: 40.0,),
                  ),
                ),



              ],
            ),

            // Advanced =============
            new Stack(
            alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[

                Positioned(
                  child: InkWell(onTap: (){},
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
                          new Text(_NameAdvanced, style: TextStyle(fontSize: 23.0 , fontWeight: FontWeight.bold , color: Colors.white),),
                          new Divider(color: Colors.white,),
                          new Text("امثلة متقدمة في فلاتر" , style: TextStyle(color:Colors.amberAccent),),
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
                    child: Icon(Icons.cast , color: Colors.white, size: 40.0,),
                  ),
                ),



              ],
            ),

            // Animation =============
            new Stack(
            alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[

                Positioned(
                  child: InkWell(onTap: (){},
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
                          new Text(_NameAnimation, style: TextStyle(fontSize: 23.0 , fontWeight: FontWeight.bold , color: Colors.white),),
                          new Divider(color: Colors.white,),
                          new Text("امثلة تطبيقية علي تحريك الانيميشن" , style: TextStyle(color:Colors.amberAccent),),
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
                    child: Icon(Icons.movie_filter , color: Colors.white, size: 40.0,),
                  ),
                ),



              ],
            ),

            // Firebase ============
            new Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[

                Positioned(
                  child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => My_ListFirebase(nameAppBar: _NameFirebase,)),);},
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
                          new Text(_NameFirebase, style: TextStyle(fontSize: 23.0 , fontWeight: FontWeight.bold , color: Colors.white),),
                          new Divider(color: Colors.white,),
                          new Text("ربط التطبيق بقواعد بيانات الفايربيس " , style: TextStyle(color:Colors.amberAccent),),
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
                    child: Icon(Icons.cloud_upload , color: Colors.white, size: 40.0,),
                  ),
                ),



              ],
            ),

            // Full application ============
            new Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[

                Positioned(
                  child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_ListApplication(nameAppBar: _NameApplication,)));},
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
                          new Text(_NameApplication, style: TextStyle(fontSize: 23.0 , fontWeight: FontWeight.bold , color: Colors.white),),
                          new Divider(color: Colors.white,),
                          new Text("تطبيقات كاملة" , style: TextStyle(color:Colors.amberAccent),),
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
                    child: Icon(Icons.smartphone , color: Colors.white, size: 40.0,),
                  ),
                ),



              ],
            ),




              ],
            ),
          ),
        ],
        ),

      ),
    );
  }

  Stack _buildStackSections(BuildContext context , String namePage , String title, String description, IconData myIcon) {
    return new Stack(
          alignment: Alignment.center,
            overflow: Overflow.visible,
            children: <Widget>[

              Positioned(
                child: InkWell(onTap: (){Navigator.pushNamed(context, namePage);},
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
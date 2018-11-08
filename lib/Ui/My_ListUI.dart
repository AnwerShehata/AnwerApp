import 'package:flutter/material.dart';
import 'package:anwerapp/Ui/My_Dash.dart';
import 'package:anwerapp/Ui/My_designLogin.dart';
import 'package:anwerapp/Ui/My_FinanceMobile.dart';
import 'package:anwerapp/Ui/My_MinimalTravelDiary.dart';
import 'package:anwerapp/Ui/My_ProfileScreen.dart';
import 'package:anwerapp/Ui/My_StackLayout.dart';
import 'package:anwerapp/Ui/My_TalentHire2.dart';
import 'package:anwerapp/Ui/My_Ui.dart';
import 'package:anwerapp/Ui/My_UiCards.dart';
import 'package:anwerapp/Ui/My_SlideShowImages.dart';
import 'package:anwerapp/Ui/My_Orderpage.dart';


class My_ListUI extends StatefulWidget {

   final String nameAppBar;
  const My_ListUI({Key key, this.nameAppBar}) : super(key: key);


  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ListUI> {

  var _controllerList =ScrollController();



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        //----- floatingActionButton --------------------------------------------------------------------
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple.shade900,
          onPressed: (){
            // عند الضغط هنا يقوم بالانتقال اسفل القائمة
            _controllerList.animateTo(_controllerList.position.maxScrollExtent,
                duration: Duration(seconds: 1), curve: Curves.easeInOut);},
          child: new Icon(Icons.expand_more , size: 45.0,),
        ),




        appBar: new AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: new Text("${widget.nameAppBar}"),
        ),

        body: ListView(
          controller:_controllerList ,
          children: <Widget>[


            //=== Order page ===============
            new ListTile(
              title: new Text("Ui Order page"),
              subtitle: new Text("Ui Order page"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> My_Orderpage()),);},
            ),
            new Divider(),


            //=======ListView Builder ===============
            new ListTile(
              title: new Text(" Dash "),
              subtitle: new Text("Dash "),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Dash()),);},
            ),
            new Divider(),


            //=======ListView Builder ===============
            new ListTile(
              title: new Text(" Finance Mobile "),
              subtitle: new Text("Finance Mobile  "),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_FinanceMobile()),);},
            ),
            new Divider(),


            //=======ListView Builder ===============
            new ListTile(
              title: new Text(" Profile Screen"),
              subtitle: new Text(" صفحة البروفايل الخاصة بالمستخدمة "),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_ProfileScreen()),);},
            ),
            new Divider(),

            //=======ListView Builder ===============
            new ListTile(
              title: new Text(" Ui Cards "),
              subtitle: new Text("Ui Cards "),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_UiCards()),);},
            ),
            new Divider(),


            //=======ListView Builder ===============
            new ListTile(
              title: new Text("designLogin"),
              subtitle: new Text("designLogin"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_designLogin()),);},
            ),
            new Divider(),



            //=======ListView Builder ===============
            new ListTile(
              title: new Text("Minimal Travel Diary"),
              subtitle: new Text("Minimal Travel Diary"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_MinimalTravelDiary()),);},
            ),
            new Divider(),


            //=======ListView Builder ===============
            new ListTile(
              title: new Text("My_StackLayout"),
              subtitle: new Text("My_StackLayout"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_StackLayout()),);},
            ),
            new Divider(),



            //=======ListView Builder ===============
            new ListTile(
              title: new Text(" My_Ui "),
              subtitle: new Text(" My_Ui "),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Ui()),);},
            ),
            new Divider(),


            //=======ListView Builder ===============
            new ListTile(
              title: new Text(" My_UiCards "),
              subtitle: new Text(" My_UiCards"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_UiCards()),);},
            ),
            new Divider(),


            //=======ListView Builder ===============
            new ListTile(
              title: new Text(" My_UiCards "),
              subtitle: new Text(" My_UiCards"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_TalentHire()),);},
            ),
            new Divider(),


            //=======ListView Builder ===============
            new ListTile(
              title: new Text(" Slide Show Images"),
              subtitle: new Text(" Slide Show Images"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_SlideShowImages()),);},
            ),
            new Divider(),







          ],
        ),



      ),
    );
  }
}
  import 'package:flutter/material.dart';
  import 'package:anwerapp/Basics/My_FloatingActionButton.dart';
  import 'package:anwerapp/Basics/My_bottomNavigationBar.dart';
  import 'package:anwerapp/Basics/My_ButtonAndText.dart';
  import 'package:anwerapp/Basics/My_CardLayout.dart';
  import 'package:anwerapp/Basics/My_checkbox.dart';
  import 'package:anwerapp/Basics/My_NotificationAlertDialog.dart';
  import 'package:anwerapp/Basics/My_TextInput.dart';
  import 'package:anwerapp/Basics/My_DropDownButton.dart';
  import 'package:anwerapp/TabBar/My_TabBarView.dart';
  import 'package:anwerapp/Basics/My_ListViewBuilder.dart';
  import 'package:anwerapp/Basics/My_ListViewHorizontal.dart';
  import 'package:anwerapp/Basics/My_ScrollController.dart';
  import 'package:anwerapp/Basics/My_SwipeToDismiss.dart';
  import 'package:anwerapp/Basics/My_OpneImageNewActivity.dart';
  import 'package:anwerapp/Basics/My_GridView.dart';
  import 'package:anwerapp/Basics/My_SliverAppBar.dart';
  import 'package:anwerapp/Basics/My_SliverAppBar2.dart';
  import 'package:anwerapp/Basics/My_Drawer.dart';
  import 'package:anwerapp/Basics/Data/My_DataOne.dart';
  import 'package:anwerapp/Ui/My_SlidShow.dart';



  class My_ListBasics extends StatefulWidget {

    final String nameAppbar;
  const My_ListBasics({Key key, this.nameAppbar}) : super(key: key);

    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<My_ListBasics> {

    var _controllerList =ScrollController();

    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(fontFamily: "Cairo"),

        home:  Directionality( textDirection: TextDirection.ltr,
          child: new Scaffold(

            //----- App Bar --------------------------------------------------------------------
            appBar: new AppBar(
              elevation: 0.0,
              centerTitle: true,
              title: new Text("Basics"),
              leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
            ),








            //----- floatingActionButton --------------------------------------------------------------------
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.deepPurple.shade900,
              onPressed: (){
                // عند الضغط هنا يقوم بالانتقال اسفل القائمة
                _controllerList.animateTo(_controllerList.position.maxScrollExtent,
                    duration: Duration(seconds: 1), curve: Curves.easeInOut);},
              child: new Icon(Icons.expand_more , size: 45.0,),
            ),




            //----- body --------------------------------------------------------------------
            body: SafeArea(
              child: new ListView(
//                reverse: true,   //  هنا يتم ترتيب القائمة من الاحدث الي الاقدم -- بمعنا الاحدث سوف يكون فوق
//                physics: BouncingScrollPhysics(), // هنا سوف تظهر من الايفون
              controller:_controllerList ,
                children: <Widget>[




                //=======Floating Action Button ===============
                  new ListTile(
                    title: new Text("Floating Action Button"),
                    subtitle: new Text(" Floating Action Button"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_FloatingActionButton()),);},
                  ),
                  new Divider(),


                   //=======_bottom Navigation Bart ===============
                  new ListTile(
                    title: new Text("Bottom Navigation Bar"),
                    subtitle: new Text(" Bottom Navigation Bar"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_bottomNavigationBar()),);},
                  ),
                  new Divider(),


                  //=======Button And Text ===============
                  new ListTile(
                    title: new Text("Button And Text"),
                    subtitle: new Text(" Button And Text"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_ButtonAndText()),);},
                  ),
                  new Divider(),


                   //=======Card View Layout ===============
                  new ListTile(
                    title: new Text("Card View Layou"),
                    subtitle: new Text(" Card View Layou"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_CardLayout()),);},
                  ),
                  new Divider(),

                   //======= checkbox ===============
                  new ListTile(
                    title: new Text("checkbox"),
                    subtitle: new Text(" checkbox"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_checkbox()),);},
                  ),
                  new Divider(),


                  //======= Drawer ===============
                  new ListTile(
                    title: new Text(" Drawer"),
                    subtitle: new Text(" Drawer"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Drawer()),);},
                  ),
                  new Divider(),


                   //=======_Notification Alert Dialog ===============
                  new ListTile(
                    title: new Text("Notification Alert Dialog"),
                    subtitle: new Text("Alert Dialog / Button Seat  /SankBar / Simpl Dialog"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_NotificationAlertDialog()),);},
                  ),
                  new Divider(),


                    //=======TextInput ===============
                    new ListTile(
                      title: new Text("TextInput"),
                      subtitle: new Text(" عند كتاب ايه نص يقوم بالتغيير في النص الذي فوقة"),
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_TextInput()),);},
                    ),
                  new Divider(),

                      //=======TextInput ===============
                    new ListTile(
                      title: new Text("Drop Down Button"),
                      subtitle: new Text("هنا يتم عرض قوائم الاختيارات مثل Spinner "),
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_DropDownButton()),);},
                    ),
                  new Divider(),


                   //=======TextInput ===============
                    new ListTile(
                      title: new Text("TabBar View"),
                      subtitle: new Text("هنا يتم عرض صفحات متعددة  في نفس المكان مثل Fragment"),
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_TabBarView()),);},
                    ),
                  new Divider(),

                    //=======ListView Builder ===============
                    new ListTile(
                      title: new Text("ListView Builde"),
                      subtitle: new Text("هذا القائمة تعمل من RecyclerView"),
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_ListViewBuilder()),);},
                    ),
                  new Divider(),

                     //=======ListView Builder ===============
                    new ListTile(
                      title: new Text(" ListView Horizontal"),
                      subtitle: new Text("مثال علي تطبيق الافلام "),
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_ListViewHorizontal()),);},
                    ),
                  new Divider(),

                  //=======ListView Builder ===============
                  new ListTile(
                    title: new Text(" Scroll Controller "),
                    subtitle: new Text("عند الضغط علي الزر يتم الانتقال الي اسفل القائمة والعكس "),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_ScrollController()),);},
                  ),
                  new Divider(),



                   //=======ListView Builder ===============
                  new ListTile(
                    title: new Text(" SwipeTo Dismiss "),
                    subtitle: new Text("عند السحب من اليمن الي اليسار يتم حذف العنصر "),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_SwipeToDismiss()),);},
                  ),
                  new Divider(),



                   //=======ListView Builder ===============
                  new ListTile(
                    title: new Text(" Opne Image New Activity"),
                    subtitle: new Text("فتح الصورة في صفحة جديدة مثل تطبيق الافلام"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_OpneImageNewActivity()),);},
                  ),
                  new Divider(),


                   //=======ListView Builder ===============
                  new ListTile(
                    title: new Text(" GridView "),
                    subtitle: new Text("GridView"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_GridView()),);},
                  ),
                  new Divider(),



                   //=======ListView Builder ===============
                  new ListTile(
                    title: new Text("  Sliver AppBar "),
                    subtitle: new Text("Sliver AppBar"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_SliverAppBar()),);},
                  ),
                  new Divider(),


                   //=======ListView Builder ===============
                  new ListTile(
                    title: new Text("  Sliver AppBar 2 "),
                    subtitle: new Text("Sliver AppBar 2"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_SliverAppBar2()),);},
                  ),
                  new Divider(),


                   //=======ListView Builder ===============
                  new ListTile(
                    title: new Text(" Data One "),
                    subtitle: new Text("ارسال البيانات من صفحة الي صفحة اخري"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_DataOne()),);},
                  ),
                  new Divider(),



                   //=======ListView Builder ===============
                  new ListTile(
                    title: new Text(" Slid Show "),
                    subtitle: new Text(" سلايدر جاهز يتحرك اتوماتيك "),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_SlidShow()),);},
                  ),
                  new Divider(),








                ],
              ),
            ),

          ),
        ),
      );
    }
  }
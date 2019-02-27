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
  import './My_Wrap.dart';
  import './My_Expansion.dart';
  import 'My_SliverAppBar3.dart';
  import '../Basics/PageView/HomePageView.dart';
  import 'My_FloatingActionButton_unicorndial.dart';
  import '../TabBar/My_TabBarViewTwo.dart';
  import './My_Stepper.dart';


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
              backgroundColor: Colors.pink,
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

                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_FloatingActionButton()));} ,
                      title: "Floating Action Button" , subtitle: " Floating Action Button" ),

                   //=======_bottom Navigation Bart ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   My_bottomNavigationBar()));} ,
                      title: " Bottom Navigation Bar" , subtitle: "Bottom Navigation Bar " ),


                  //=======Button And Text ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  My_ButtonAndText ()));} ,
                      title: "Button And Text" , subtitle: "Button And Text " ),


                   //=======Card View Layout ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_CardLayout  ()));} ,
                      title: "Card View Layou" , subtitle: "Card View Layou " ),


                   //======= checkbox ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_checkbox  ()));} ,
                      title: "checkbox" , subtitle: " checkbox" ),


                  //======= Drawer ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   My_Drawer()));} ,
                      title: "Drawer" , subtitle: " Drawer" ),


                   //=======_Notification Alert Dialog ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  My_NotificationAlertDialog ()));} ,
                      title: "Notification Alert Dialog" , subtitle: "Alert Dialog / Button Seat  /SankBar / Simpl Dialog" ),


                    //=======TextInput ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  My_TextInput ()));} ,
                      title: "TextInput" , subtitle: " عند كتاب ايه نص يقوم بالتغيير في النص الذي فوقة" ),


                      //=======TextInput ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_DropDownButton()));} ,
                      title: "Drop Down Button" , subtitle: " هنا يتم عرض قوائم الاختيارات مثل Spinner" ),


                   //=======TextInput ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>My_TabBarView   ()));} ,
                      title: "TabBar View" , subtitle: " هنا يتم عرض صفحات متعددة  في نفس المكان مثل Fragment" ),

                   //=======TextInput ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>My_TabBarViewTwo   ()));} ,
                      title: "TabBar View Two" , subtitle: " هنا يتم عرض صفحات متعددة  في نفس المكان مثل Fragment" ),


                    //=======ListView Builder ===============

                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  My_ListViewBuilder ()));} ,
                      title: "ListView Builde" , subtitle: " هذا القائمة تعمل من RecyclerView" ),


                     //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   My_ListViewHorizontal()));} ,
                      title: "ListView Horizontal" , subtitle: " مثال علي تطبيق الافلام" ),


                  //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  My_ScrollController ()));} ,
                      title: "Scroll Controller" , subtitle: " عند الضغط علي الزر يتم الانتقال الي اسفل القائمة والعكس" ),



                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_SwipeToDismiss  ()));} ,
                      title: " SwipeTo Dismiss" , subtitle: " عند السحب من اليمن الي اليسار يتم حذف العنصر" ),



                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   My_OpneImageNewActivity()));} ,
                      title: "Opne Image New Activity" , subtitle: " فتح الصورة في صفحة جديدة مثل تطبيق الافلام" ),


                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  My_GridView ()));} ,
                      title: "GridView" , subtitle: " GridView" ),



                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   My_SliverAppBar()));} ,
                      title: "Sliver AppBar" , subtitle: " Sliver AppBar" ),


                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  My_SliverAppBar2 ()));} ,
                      title: "Sliver AppBar 2" , subtitle: " Sliver AppBar 2" ),


                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   My_DataOne()));} ,
                      title: "Data One" , subtitle: " ارسال البيانات من صفحة الي صفحة اخري" ),


                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_SlidShow  ()));} ,
                      title: "Slid Show" , subtitle: " سلايدر جاهز يتحرك اتوماتيك" ),

                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_Wrap  ()));} ,
                      title: "My_Wrap" , subtitle: " My_Wrap" ),

                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_Expansion  ()));} ,
                      title: "Expansion" , subtitle: "My_Expansion" ),

                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_SliverAppBar3  ()));} ,
                      title: "SliverAppBar " , subtitle: "Expansion" ),

                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageView  ()));} ,
                      title: " HomePageView " , subtitle: "HomePageView " ),


                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_FloatingActionButton_unicorndial  ()));} ,
                      title: " My_FloatingActionButton_unicorndial  " , subtitle: "HomePageView " ),


                   //=======ListView Builder ===============
                  _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_Stepper()));} ,
                      title: " Stepp " , subtitle: "My_Stepper " ),

                ],
              ),
            ),

          ),
        ),
      );
    }


    GestureDetector _ItemListView({
      GestureTapCallback onTap ,
      String title: "name item",
      String subtitle : "sadsada",
    }) {
      return GestureDetector(onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 5),
          child: new Container(
            decoration: BoxDecoration(
                color: Colors.pink.shade100.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6) ,border: Border.all(width: 1 ,color: Colors.pink.shade100)
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new ListTile(
                  title: new Text(title,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w400 ),),
                  subtitle: new Text(subtitle ,style: TextStyle(color: Colors.grey.shade500, fontSize: 13),),
                  trailing: Icon(Icons.arrow_forward_ios ,color: Colors.pink.withOpacity(0.5),),
                )
              ],
            ),
          ),
        ),
      );
    }


  }
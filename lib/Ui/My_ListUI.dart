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
  import '../Ui/FurnitureApp.dart';
  import './My_FoodRecipes.dart';
  import './My_CakesCatalog.dart';
  import './My_loginpage.dart';
  import './My_BackdropFilterOne.dart';
  import './My_slideCarousel.dart';
  import 'My_spinkit.dart';


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
            title: new Text(" Flutter Ui"),
            leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
          ),

          body: ListView(
            physics: BouncingScrollPhysics(),
            controller:_controllerList ,
            children: <Widget>[


              //=== Order page ===============

              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_Orderpage()));} ,
                  title: "Ui Order page" , subtitle: " Ui Order page" ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_Dash()));} ,
                  title: "Dash " , subtitle: " Dash " ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_FinanceMobile()));} ,
                  title: "Finance Mobile " , subtitle: " Finance Mobile " ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_ProfileScreen()));} ,
                  title: "Profile Screen " , subtitle: " صفحة البروفايل الخاصة بالمستخدمة " ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_UiCards()));} ,
                  title: "Ui Cards " , subtitle: "Ui Cards " ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_designLogin()));} ,
                  title: "designLogin" , subtitle: "designLogin " ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_MinimalTravelDiary()));} ,
                  title: "Minimal Travel Diary" , subtitle: "Minimal Travel Diary " ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_StackLayout()));} ,
                  title: "My_StackLayout" , subtitle: "My_StackLayout" ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_Ui()));} ,
                  title: "My_Ui" , subtitle: "My_Ui" ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_UiCards()));} ,
                  title: "My_UiCards" , subtitle: "My_UiCards" ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_TalentHire()));} ,
                  title: "My_UiCards" , subtitle: "My_UiCards" ),


              //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_SlideShowImages()));} ,
                  title: "Slide Show Images" , subtitle: "Slide Show Images" ),


             //=======ListView Builder ===============

              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => FurnitureApp()));} ,
                  title: "FurnitureApp" , subtitle: "FurnitureApp" ),


             //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_FoodRecipes()));} ,
                  title: "My_FoodRecipes" , subtitle: "My_FoodRecipes" ),



             //=======ListView Builder ===============
              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_CakesCatalog()));} ,
                  title: "My_CakesCatalog" , subtitle: "My_CakesCatalog" ),



              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_loginpage()));} ,
                  title: "My_loginpage" , subtitle: " My_loginpage" ),


              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_BackdropFilterOne()));} ,
                  title: "Backdrop Filter" , subtitle: "عمل الكونتينر بلور بدرجة شفافية" ),


              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_slideCarousel()));} ,
                  title: "slideCarousel" , subtitle: "سلايد شو الشكل الجديد" ),

              _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => My_spinkit()));} ,
                  title: "spinkit" , subtitle: "صفحة التحميل" ),

            ],
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
                color: Colors.blue.shade100.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6) ,border: Border.all(width: 1 ,color: Colors.blue.shade100)
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new ListTile(
                  title: new Text(title,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w400 ),),
                  subtitle: new Text(subtitle ,style: TextStyle(color: Colors.grey.shade500, fontSize: 13),),
                  trailing: Icon(Icons.arrow_forward_ios ,color: Colors.blue.withOpacity(0.5),),
                )
              ],
            ),
          ),
        ),
      );
    }

  }
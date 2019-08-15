  import 'package:flutter/material.dart';
  import '../curvedNavigationBar/HomeNavigationBar.dart';
  import '../curvedNavigationBar/NavigationBarNormal.dart';


  class My_ListBasicsAnonymous extends StatefulWidget {

  final String nameAppbar;
  const My_ListBasicsAnonymous({Key key, this.nameAppbar}) : super(key: key);
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<My_ListBasicsAnonymous> {

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
              title: new Text("Basics Anonymous"),
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
              controller:_controllerList ,
                children: <Widget>[






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
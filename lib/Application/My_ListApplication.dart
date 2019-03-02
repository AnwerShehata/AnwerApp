import 'package:flutter/material.dart';

import '../Application/CommerceApp/pages/loginPage.dart';
import '../Application/AppWhatsApp/homeWhatsApp.dart';
import '../Application/playmusic/HomeMusic.dart';

class My_ListApplication extends StatefulWidget {

  final String nameAppBar;
  const My_ListApplication({Key key, this.nameAppBar}) : super(key: key);

  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ListApplication> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        

        // --------- App Bar -----------------------------------------------------
        appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: new Text("Full Application"),
          backgroundColor: Colors.indigoAccent,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
        ),


        // --------- Body -----------------------------------------------------
        body: ListView(
          children: <Widget>[

            //=======Floating Action Button ===============
            _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   loginPage()));} ,
                title: "Home Commerce App " , subtitle: "تطبيق مشتريات" ),

            //=======Floating Action Button ===============
            _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   homeWhatsApp()));} ,
                title: " WhatsApp  " , subtitle: "تطبيق WhatsApp" ),

            //=======Floating Action Button ===============
            _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   HomeMusic()));} ,
                title: "playing Musice" , subtitle: "تشغيل الملفات الصوتية " ),


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
              color: Colors.indigoAccent.shade100.withOpacity(0.1),
              borderRadius: BorderRadius.circular(6) ,border: Border.all(width: 1 ,color: Colors.indigoAccent.shade100)
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new ListTile(
                title: new Text(title,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w400 ),),
                subtitle: new Text(subtitle ,style: TextStyle(color: Colors.grey.shade500, fontSize: 13),),
                trailing: Icon(Icons.arrow_forward_ios ,color: Colors.indigoAccent.withOpacity(0.6),),
              )
            ],
          ),
        ),
      ),
    );
  }


}
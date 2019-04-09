import 'package:flutter/material.dart';
import './StudentApp/ui/My_ListViewStudent.dart';
import './CloudFirebase/PageLogin.dart';
import './Authentication/Ui/My_loginpage.dart';
import 'package:anwerapp/Ui/project2page/Deserve.dart';
import './search/SearchFirebase.dart';



class My_ListFirebase extends StatefulWidget {

  final String nameAppBar;
  const My_ListFirebase({Key key, this.nameAppBar}) : super(key: key);

  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ListFirebase> {
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
          title: new Text(" Firebase "),
          backgroundColor: Colors.green,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),

        ),


        // --------- Body -----------------------------------------------------
        body: ListView(
          children: <Widget>[

            //=======Floating Action Button ===============
            _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   Deserve()));} ,
                title: " Deserve" , subtitle: " Deserve" ),


            //=======Floating Action Button ===============
            _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>SearchFirebase()));} ,
                title: " SearchFirebase" , subtitle: " البحث في Firebase" ),


    //=======Floating Action Button ===============
            _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   My_ListViewStudent()));} ,
                title: " App Student" , subtitle: "  Realtime اضافة وخذف وتعديل البيانات" ),

            //=======Floating Action Button ===============
            _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   PageLogin()));} ,
                title: " CloudFirebase" , subtitle: " اضافة وخذف وتعديل البيانات" ),

         //=======Floating Action Button ===============
            _ItemListView( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>   My_loginpage()));} ,
                title: " Page Login" , subtitle: " صفحة تسجيل الدخول باستخدام الايميل " ),


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
              color: Colors.green.shade100.withOpacity(0.2),
              borderRadius: BorderRadius.circular(6) ,border: Border.all(width: 1 ,color: Colors.green.shade200)
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new ListTile(
                title: new Text(title,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w400 ),),
                subtitle: new Text(subtitle ,style: TextStyle(color: Colors.grey.shade500, fontSize: 13),),
                trailing: Icon(Icons.arrow_forward_ios ,color: Colors.green.withOpacity(0.5),),
              )
            ],
          ),
        ),
      ),
    );
  }


}
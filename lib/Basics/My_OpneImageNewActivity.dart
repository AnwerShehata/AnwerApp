import 'package:flutter/material.dart';
import 'package:anwerapp/Basics/My_Images.dart';

class My_OpneImageNewActivity extends StatefulWidget {
  _BirdStateTow createState() => new _BirdStateTow();
}

class _BirdStateTow extends State<My_OpneImageNewActivity> {


  String image1="https://images.pexels.com/photos/39382/baby-boy-small-face-39382.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  bool loaded = true;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        //-----App bar ----------------------------------------------------------------------------
        appBar: new AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: new Text("Opne Image New Activity "),),


        //-----floating Action Button -----------------------------------------------------------------
        floatingActionButton: FloatingActionButton(onPressed: (){},
          child: Icon(Icons.radio_button_checked,size: 30.0,), elevation: 0.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,



        //-----Body -----------------------------------------------------------------
        body: ListView(
          children: <Widget>[

            MyListTile(context,"1" , "انور شحاتة" , "مهندس برمجيات ","https://images.pexels.com/photos/1133721/pexels-photo-1133721.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            MyListTile(context,"1" , "محمد جمال ","مصمم جرافيك ","https://images.pexels.com/photos/838879/pexels-photo-838879.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            MyListTile(context,"1" , "احمد يوسف " ,"مهندسة it","https://images.pexels.com/photos/41173/baby-boy-child-christmas-41173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            MyListTile(context,"1" , "جمال رشاد ", "مدير مالي ","https://images.pexels.com/photos/962784/pexels-photo-962784.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),



          ],
        ),



      ),
    );
  }

  // هذا الدالة التي يتم استدعائها داخل الكلاس وتمرير جميع البراميترات لها
  ListTile MyListTile(BuildContext context , String id , String title , String subtitle , String image1) {
    return new ListTile(
            title: new Text(title),
            subtitle: new Text(subtitle),
            //هنا يتم عرض الصورة دائريه
            leading: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Images(imgURL: image1,)),);},
              child: Hero( tag: "test $id",
                child: Container(
                  height: 50.0,width: 50.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                      image: NetworkImage(image1))),
                ),
              ),
            ),
          );
  }
}





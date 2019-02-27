import 'package:flutter/material.dart';

class My_DynamicTheming extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}


 class _BirdState extends State<My_DynamicTheming> {
   bool darkTheme = false;
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: darkTheme ? ThemeData.dark() : ThemeData.light(),
       home: Scaffold(

         //========= AppBar ==================
         appBar: AppBar(
           title: Text("App"),
         ),


         //========= AppBar ==================
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               ListTile(
                 title: Text("Dark Theme"),
                 trailing: Switch( value: darkTheme,  onChanged: (changed) {
                     setState(() {
                       darkTheme = changed;
                     });
                   },
                 ),
               )
             ],
           ),
         ),

         //========= AppBar ==================
         body: Center(),



       ),
     );
   }
 }

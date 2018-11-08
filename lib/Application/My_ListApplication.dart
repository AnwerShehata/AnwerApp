import 'package:flutter/material.dart';
import 'package:anwerapp/Application/CommerceApp/HomeCommerceApp.dart';

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
          title: new Text("${widget.nameAppBar}"),),


        // --------- Body -----------------------------------------------------
        body: ListView(
          children: <Widget>[

            //=======Floating Action Button ===============
            new ListTile(
              title: new Text("Home Commerce App"),
              subtitle: new Text(" تطبيق مشتريات "),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeCommerceApp()),);},
            ),
            new Divider(),


          ],
        ),








      ),
    );
  }
}
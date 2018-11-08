import 'package:flutter/material.dart';

class My_ScrollController extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ScrollController> {

  var mylist = List.generate(200, (i) => "flutter $i");
  var _controller =ScrollController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: new AppBar(),
        floatingActionButton: FloatingActionButton
        // عند الضغط هنا يقوم بالانتقال الي اعلا القائمة
          (onPressed:(){_controller.animateTo(0.0, duration: Duration(seconds: 1), curve: Curves.easeInOut);}
        ),

        body: Row(children: <Widget>[

          Expanded(
            child: ListView(
                controller: _controller ,
              children: mylist.map((itme){
                return ListTile(
                  leading: FlutterLogo(),
                  title: Text(itme),
                );
              }).toList()
            ),
          ),


          Expanded(
            child: ListView(
              shrinkWrap: true,
                reverse: true,
                controller: _controller ,
                children: mylist.map((itme){
                  return ListTile(
                    leading: FlutterLogo( colors: Colors.red,),
                    title: Text(itme),
                  );
                }).toList()
            ),
          ),

        ],),

      ),
    );
  }
}
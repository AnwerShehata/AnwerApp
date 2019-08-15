import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';

class My_Intrinsic extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Intrinsic> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          elevation: 0,
          title: Text("TextEditing"),
        ),


        body: ListView(
          children: <Widget>[

            SizedBox(height: 50),

            //----IntrinsicHeight----------------------------------------
            new IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text("Anwer" , style: TextStyle(fontSize: 20),) ,
                  VerticalDivider(color: Colors.red,),
                  Text("Ali" , style: TextStyle(fontSize: 20),) ,
                  VerticalDivider(color: Colors.red,),
                  Text("Nor" , style: TextStyle(fontSize: 20),) ,
                ],
              ),
            ),

            SizedBox(height: 100),


            //----IntrinsicWidth----------------------------------------
            new IntrinsicWidth(
              child: Column(
                children: <Widget>[
                  
                  new FlatButton(onPressed: (){}, child: Text("Hello") ,
                    color: Colors.teal[100],padding: EdgeInsets.symmetric(horizontal: 100),),

                  Divider(color: Colors.deepPurple,),
                  new FlatButton(onPressed: (){}, child: Text("Hello") ,
                    color: Colors.teal[100],padding: EdgeInsets.symmetric(horizontal: 100),),

                  Divider(color: Colors.deepPurple,),
                  new FlatButton(onPressed: (){}, child: Text("Hello") ,
                    color: Colors.teal[100],padding: EdgeInsets.symmetric(horizontal: 100),),


                ],
              ),
            )


          ],
        )





      ),
    );
  }
}
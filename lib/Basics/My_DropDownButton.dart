import 'package:flutter/material.dart';

class My_DropDownButton extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DropDownButton> {
  var users =["anwer" , "Ali" , "Ome" , "Talal" , "Mahmood"];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        appBar: new AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text("Drop Down Button"),),

        body: ListView(
          children: <Widget>[
            new Container(
              child: Column(
                children: <Widget>[

                  //=======  Dropdown Example 1 ==========
                  DropdownButtonHideUnderline(
                    child: new DropdownButton<String>( value: "Sex",
                      items: [
                        DropdownMenuItem( value: 'One', child: Text("One")),
                        DropdownMenuItem( value: 'Tow', child: Text("Tow ")),
                        DropdownMenuItem( value: 'Three', child: Text("Three")),
                        DropdownMenuItem( value: 'For', child: Text("For")),
                        DropdownMenuItem( value: 'Five', child: Text("Five")),
                        DropdownMenuItem( value: 'Sex', child: Text("Sex")),
                      ],
                      onChanged: (v){
                      },
                    ),
                  ),
                  

                ],
              ),
            )

          ],
        ),


      ),
    );
  }
}
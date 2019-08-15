import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';
import 'package:toast/toast.dart';


class My_DropdownButton extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_DropdownButton> {

  String _dropValue  ;
  String _dropValue2  ;

  void _FunctionAli(){
    Toast.show("ali Function", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM , backgroundColor: Colors.red);
  }

  void _FunctionAnweri(){
    Toast.show("anwer Function", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM , backgroundColor: Colors.red);
  }

  void _FunctionShehata(){
    Toast.show("shehata Function", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM , backgroundColor: Colors.red);
  }

  void _dropChange(String val){
    setState(() {
      _dropValue = val;

      switch(val){
        case "anwer" :  _FunctionAnweri() ;
        break;

        case "ali" : _FunctionAli() ;
        break;

        case "shehata" :  _FunctionShehata() ;
        break;
      }
    });
  }

  void _dropChange2(String val){
    setState(() {
      _dropValue2 = val;
      switch(val){
        case "Egypt" :  print("Function Egypt") ;
        break;

        case "Kuwait" : print("Function Kuwait") ;
        break;

        case "Dubai" :  print("Function Dubai") ;
        break;
      }
    });
  }

  void _FunctionFlutter(){
    Toast.show("Flutter", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM , backgroundColor: Colors.red);
  }

  void _FunctionDart(){
    Toast.show("Dart", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM , backgroundColor: Colors.red);
  }

  void _FunctionJavaFX(){
    Toast.show("JavaFX", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM , backgroundColor: Colors.red);
  }

  void choiceAction(String choice){
    if(choice == Constants.Flutter){ _FunctionFlutter();}
    else if(choice == Constants.Dart){ _FunctionDart();}
    else if(choice == Constants.JavaFX){_FunctionJavaFX();}
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          elevation: 0,
          title: Text(" DropdownButton"),
        ),


        body: ListView(
          children: <Widget>[

            SizedBox(height: 100),


            //  ================================================ هنا تقوم بتحديد الاسم اول منيو ====
            Container(
              color: Colors.teal[100],
              margin: EdgeInsets.symmetric(horizontal: 50),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButtonHideUnderline(
                child: new DropdownButton<String>(
                  isExpanded: true,
                  onChanged: _dropChange,
                  hint: Text("Select your name"),
                  value: _dropValue,
                  items: <String>['anwer' , 'ali' , 'shehata'].
                  map<DropdownMenuItem<String>>((String valuemap){
                    return DropdownMenuItem<String>(
                      child: Text(valuemap),
                      value: valuemap,
                    );
                  }).toList(),
                ),
              ),
            ),



            //  ================================================ هنا تقوم بتحديد الدولة ====
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_balance),
                  labelText: "Select your city",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  fillColor: Colors.teal[100],
                  filled: true
                ),
                onChanged: _dropChange2,
                value: _dropValue2,
                items: <String>['Egypt' , 'Kuwait' , 'Dubai'].
                map<DropdownMenuItem<String>>((String valuemap){
                return DropdownMenuItem<String>(
                child: Text(valuemap),
                value: valuemap,
                );
                }).toList(),
              ),
            ),


            //  ==PopupMenuButton==============================================  ====
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
              decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(10)
              ),
              child: PopupMenuButton<String>(
                child: new Text("Menu Button" , style: TextStyle(fontSize: 18),),
                onSelected: choiceAction,
                itemBuilder: (BuildContext content){
                  return Constants.choices.map((String choice){
                  return PopupMenuItem<String>(
                  value: choice,
                  child: Align(alignment: Alignment.centerLeft,child: Text(choice)),
                  );
                  }).toList();
                },
              ),
            )


          ],
        )
      ),
    );
  }
}

class Constants{
  static const String Flutter = "Flutter " ;
  static const String Dart = "Dart " ;
  static const String JavaFX = "Java FX" ;

  static const List<String> choices =<String>[
    Flutter ,
    Dart ,
    JavaFX,
  ];
}

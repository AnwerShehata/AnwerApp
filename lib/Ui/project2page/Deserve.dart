import 'package:flutter/material.dart';
import 'package:anwerapp/Ui/project2page/pageMap.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:anwerapp/Tools/app_tools.dart';

class Deserve extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Deserve> with SingleTickerProviderStateMixin {

  Animation animation , animationTow ,animationThree ,animationLine ,
      animationChooseCountry ,animationDone ,animationDrop;
  AnimationController animationController;

  String dropdownValue = 'One';
  String dropdownValue2 = 'Two';

  int radioGroup = 1;
  void _radioEventHandler(int radioValue){
    setState(() {
      radioGroup = radioValue;
      switch(radioGroup)
      {
        case 1:   print("Ar");
        ; break;
        case 2:    print("En");
        ; break;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this ,duration: Duration(seconds: 2));


    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Interval(0.0, 1.0 ,curve:Curves.fastOutSlowIn,)));

    animationTow = Tween(begin: -1.0 , end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Interval(0.2, 1.0 , curve: Curves.fastOutSlowIn)
    ));

    animationThree = Tween(begin: -1.0 , end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Interval(0.5, 1.0 , curve: Curves.fastOutSlowIn)
    ));

    animationLine = Tween(begin: 1.0 , end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Interval(0.5, 1.0 , curve: Curves.fastOutSlowIn)
    ));

    animationDrop = Tween(begin: 1.0 , end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Interval(0.5, 1.0 , curve: Curves.fastOutSlowIn)
    ));

    animationDone = Tween(begin: 1.0, end: -0.0008).animate(CurvedAnimation(
        curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));


    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double devHeight = MediaQuery.of(context).size.height;

    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context  ,Widget child){
          return MaterialApp(
            theme: ThemeData(fontFamily: "Cairo"),
            debugShowCheckedModeBanner: false,
            home: Scaffold(

              //-----------------------AppBar-------------------------------
              appBar: AppBar(
                title: Text(" Deserve "),
                backgroundColor: Color(0xFF1e5bca),
                elevation: 0,
              ),



              //-----------------------body-------------------------------
              body: ListView(
                children: <Widget>[
                  
                  new Container(
                    padding: EdgeInsets.symmetric(horizontal: 30 ,vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        //=========== Text Choose Language ============
                        Transform(
                          transform: Matrix4.translationValues(animation.value * width , 0.0 ,0.0),
                            child: new Text("Choose Language" ,style: TextStyle(fontSize: 20),)),
                        SizedBox(height: 20),


                        //=============== Column Language  Arabic or English==========
                        new Column(
                          children: <Widget>[
                            
                            new RadioListTile(value: 1, groupValue: radioGroup, onChanged: _radioEventHandler ,title: Text("Arabic" ,style: TextStyle(fontSize: 30),),),
                            new RadioListTile(value: 2, groupValue: radioGroup, onChanged: _radioEventHandler ,title: Text("English" ,style: TextStyle(fontSize: 30),),),
                            //====== Row Arabic Language =================
                     
                          ],
                        ),


                        SizedBox(height: 30),
                        Transform(
                          transform: Matrix4.translationValues(animationLine.value *width ,0.0 , 0.0),
                            child: new Divider(color: Colors.indigo,)),


                        //=============== Text Choose Country ===============
                        SizedBox(height: 30),
                        Transform(
                            transform: Matrix4.translationValues(animationLine.value *width ,0.0 , 0.0),
                            child: new Text("Choose Country" ,style: TextStyle(fontSize: 20),)),


                        SizedBox(height: 30),
                      //=========== Container  Dropdown Country ===============
                      Transform(
                        transform: Matrix4.translationValues(animationDrop.value *width ,0.0 , 0.0),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1 ,color: Colors.grey.shade400)
                          ),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                            new Text("Country" ,style: TextStyle(fontSize: 18), ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                iconSize: 30,
                                elevation: 3,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>['One', 'Two', 'Free', 'Four']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),


                          ],),
                        ),
                      ),
                      SizedBox(height: 20),



                        //=========== Container  Dropdown Country ===============
                        Transform(
                          transform: Matrix4.translationValues(animationDrop.value *width ,0.0 , 0.0),
                          child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1 ,color: Colors.grey.shade400)
                          ),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            new Text("City" ,style: TextStyle(fontSize: 18), ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                iconSize: 30,
                                value: dropdownValue2,
                                elevation: 3,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue2 = newValue;
                                  });
                                },
                                items: <String>['One', 'Two', 'Free', 'Four']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),


                          ],),
                      ),
                        ),


                        //=========== RaisedButton DONE ===============
                        SizedBox(height: 40),
                        Transform(
                          transform: Matrix4.translationValues(0.0 , animationDone.value * devHeight , 0.0),
                          child: my_Button(
                            textButton: "DONE", radiusButton: 10 ,
                            heightButton: 60 , colorButton: Color(0xFF0cf49b),
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => pageMap()),);},
                              ),
                        )


                      ],
                    ),
                  )
                  
                ],
              ),


            ),
          );}
    );
  }


  Widget my_Button({
    String textButton: "Text Button",
    double horizontal : 0,
    double vertical : 0,
    double radiusButton : 0,
    double elevation : 0,
    double heightButton : 50,
    Color colorText,
    Color colorButton ,
    VoidCallback onPressed
  }) {
    textButton == null ? textButton == "App Button" : textButton;
    horizontal == null ? horizontal = 0.0 : horizontal;
    vertical == null ? vertical = 0.0 : vertical;
    radiusButton == null ? radiusButton = 0.0 : radiusButton;
    colorText == null ? colorText = Colors.white : colorText;
    colorButton == null ? colorButton = Colors.blue : colorButton;
    return Padding(
      padding: new EdgeInsets.symmetric(horizontal: horizontal , vertical: vertical ),
      child: new RaisedButton(
        color: colorButton,
        elevation: elevation,
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.all(new Radius.circular(radiusButton))),
        onPressed: onPressed,
        child: Container(
          height: heightButton,
          child: new Center(child: new Text(textButton, style: new TextStyle(color: colorText, fontSize: 30),),),
        ),
      ),
    );
  }

}


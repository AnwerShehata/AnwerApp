import 'package:flutter/material.dart';

class My_GridView extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_GridView> {

  double sliderValue = 1.0;
  int sliderValue2  = 1;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: new ThemeData(primaryColor: Colors.tealAccent),
      home:  new Scaffold( backgroundColor: Colors.teal,

        appBar: AppBar(title:
        Slider(
          value: sliderValue,
          divisions: 4,
          onChanged: (double value){setState(() {sliderValue = value;});},
          activeColor: Colors.teal.shade900,
          min: 1.0,
          max: 4.0,
        )),



        // هنا يتم استدعاء الدالة التي تحملbottomNavigationBar
        bottomNavigationBar: buildBottomAppBar(),


        body: new GridView.count(
//          crossAxisCount: sliderValue.toInt(),                   // هنا عدد الاعمدة التي تظهر في التطبيق
          crossAxisCount: sliderValue2,                               // هنا عدد الاعمدة التي تظهر في التطبيق
          crossAxisSpacing: 0.0,                                           // المسافة بين الاعمدة
//          childAspectRatio: 16.0 / 9.0,
          children: <Widget>[
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
            Card(child: Center(child: Text("DATA"))),
          ],),

      )


    );
  }

  //  الدالة التي تحملbottomNavigationBar
  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
        color: Colors.white70,
        shape: CircularNotchedRectangle() ,
        notchMargin:5.0,
        child: Container(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              IconButton(icon: Icon(Icons.border_all), onPressed: () {
                setState(() { sliderValue2 = 1; }); }
                ),

                       IconButton(icon: Icon(Icons.border_all), onPressed: () {
                setState(() { sliderValue2 = 2; }); }
                ),

                       IconButton(icon: Icon(Icons.border_all), onPressed: () {
                setState(() { sliderValue2 = 3; }); }
                ),

                       IconButton(icon: Icon(Icons.border_all), onPressed: () {
                setState(() { sliderValue2 = 4; }); }
                ),


            ],
          ),
        ),
      );
  }
}
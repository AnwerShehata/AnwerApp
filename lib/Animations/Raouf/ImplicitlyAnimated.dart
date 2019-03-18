  import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:anwerapp/Tools/app_tools.dart';

  class ImplicitlyAnimated extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<ImplicitlyAnimated> with SingleTickerProviderStateMixin {

    AnimationController animationController;
    double size = 100.0;
    final duration = Duration(seconds: 1);
    final durations = Duration(seconds: 2);
    bool _ison = true;


    @override
    void initState() {
      super.initState();
      animationController =AnimationController(vsync: this ,duration: Duration(seconds: 5))
        ..addListener((){
          setState(() {});
        });
    }

    @override
  void dispose() {
      animationController.dispose();
      super.dispose();
  }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        theme: _ison ? ThemeData.dark()  : ThemeData.light(),
        debugShowCheckedModeBanner: false,

        home: new Scaffold(

          //---------AppBar---------------------------------------
          appBar: AppBar(
            title: Text("Implicitly Animated"),
            elevation: 0,
          ),


          //---------AppBar---------------------------------------
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Center(
                  child: new AnimatedContainer(
                    duration: duration ,
                    width: 300,
                    height: 100,
                    color: _ison ? Colors.lightBlue : Colors.amber,

                    child: AnimatedAlign(
                        duration: durations,
                        curve: Curves.elasticOut,
                        //هنا يقول اذا كانت قيمة  ison ترو سوف يكون في اليمين
                        //واذا ا كانت قيمة  ison فالس  سوف يكون في اليسار
                        alignment: _ison ? Alignment.centerRight : Alignment.centerLeft,
                        child: GestureDetector(onTap: (){setState(() {
                          // هنا اذا كانت فلص وتم الضغط سوق تتحول الي ترو  والعكس
                          _ison =! _ison;
                        });},
                          child: AnimatedContainer(
                            duration: duration ,
                            width: 50 , height: 50,
                            color: _ison ? Colors.amber : Colors.red,),
                        )
                    )
                  ),
                ),

                SizedBox(height: 100),
                new Text("Resulte ISon  = $_ison" , style: TextStyle(fontSize: 30),),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: new Text(" اذا كانت النتيجة false سوف يتم تحريك العنصر الي اليسار ويستخدم الثيم الابيض واذا كانت النتيجة true سوف يتم تحريك العنصر الي اليمين ويستخدم الثيم الغامق " ,textDirection: TextDirection.rtl,),
                )




              ],
            ),
          ),

        ),
      );
    }
  }

  /*
                        Center(child: new GestureDetector(
                            onTap: () {setState(() {size = 400;});},
                            child:AnimatedContainer(
                                duration: Duration(seconds: 1),
                              width:  size, height: size, color: Colors.green,
                            )),
                        ),
        */


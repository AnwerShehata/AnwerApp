  import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:anwerapp/Tools/app_tools.dart';

  class AnimatedBuilderOne extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<AnimatedBuilderOne> with SingleTickerProviderStateMixin {

    AnimationController animationController;
    Animation animationColor ,animationZoom ;
    CurvedAnimation curvedAnimation ;

    double size = 100.0;


    @override
    void initState() {
      super.initState();
      animationController =AnimationController(vsync: this ,duration: Duration(seconds: 5));

      //  هذا الانيميشن يقوم بتغيير للون من اللون الاحمر الي الون الاسفر علي حسب الالوان التي يتم تحديدها
      animationColor = ColorTween(begin: Colors.green , end: Colors.indigoAccent).animate(
          CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));

      animationZoom = Tween(begin: 100.0 , end: 300.0).animate(
          CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));

      //  هذا الانيميشن يقوم بتدوير العنصر
      curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn)
      ..addListener((){
        setState(() {});
      });

      // هنا يتم تشغيل الانيميشن
      animationController.forward();


      //هنا يقول اذا تم الانتهاء من عمليت التحريك سوف يتم تكرارها
      animationController.addStatusListener((status){
        if(status == AnimationStatus.completed){
          animationController.reverse();
        } else if(status == AnimationStatus.dismissed){
          animationController.forward();
        }
      });
    }

    @override
  void dispose() {
      animationController.dispose();
      super.dispose();
  }



    @override
    Widget build(BuildContext context) {
      final double width = MediaQuery.of(context).size.width;

      return AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context  ,Widget child){
            return MaterialApp(
              theme: ThemeData(fontFamily: "Cairo"),
              debugShowCheckedModeBanner: false,
              home: Scaffold(

                //-------AppBar-------------------------------------
                appBar: AppBar(
                  elevation: 0,
                  leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
                ),


              body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Transform.rotate(
                      angle: curvedAnimation.value *2.0 * math.pi ,
                        child: new Center(child: Container(width: animationZoom.value, height: animationZoom.value , color:animationColor.value),)),


                  ],
                ),
              ),


              ),
            );}
      );
    }
  }


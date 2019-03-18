  import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:anwerapp/Tools/app_tools.dart';

  class StaggeredAnimation extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<StaggeredAnimation> with SingleTickerProviderStateMixin {

    AnimationController animationController;

    Animation<Alignment>  animationAlignment ;
    Animation<BorderRadius>  animationRadius ;
    Animation<double>  animationWidth;
    Animation<double>  animationHeight;




    @override
    void initState() {
      super.initState();
      animationController =AnimationController(vsync: this ,duration: Duration(seconds: 5))
        ..addListener((){
          setState(() {});
        });

      // ===================================== هنا يتوم بالتحريك من الاعلي الي الاسفل ===================
      animationAlignment = Tween<Alignment>(begin: Alignment.topCenter , end: Alignment.bottomCenter)
          .animate(CurvedAnimation(parent: animationController, curve: Interval(0.0, 0.20 , curve: Curves.bounceIn)));

      // =================== هنا يتوم بتغييز الــBorderRadius من 50 في البداية الي 0 في النهاية   ===================
      animationRadius = BorderRadiusTween(begin:BorderRadius.circular(50.0) , end: BorderRadius.circular(0.0)).animate(
          CurvedAnimation(parent: animationController, curve: Interval(0.20, 0.40 , curve: Curves.fastOutSlowIn)));

      // ==================================== هنا يقوم بتغيير العرض من 100 الي 300 ===================
      animationWidth = Tween<double>(begin: 100, end: 300).animate(CurvedAnimation(
          parent: animationController, curve: Interval(0.40, 0.70  , curve: Curves.linear)));

      // ===================================== هنا يقوم بتغيير الطول من 100 الي 400 ===================
      animationHeight  = Tween<double>(begin: 100 , end: 400 ).animate(CurvedAnimation(
          parent: animationController, curve: Interval(0.70, 1.0 , curve: Curves.elasticInOut)));

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


                body: SafeArea(child: Container(
                  color: Colors.grey[200],
                  child: GestureDetector(
                    // ===================================== هنا في حالة الضغط علي العنصر سوف يتم تنفيذ الحركة ===================
                  onTap: (){animationController.forward();},
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: animationAlignment.value,
                          child: Container(
                            width: animationWidth.value,
                            height: animationHeight.value,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: animationRadius.value
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                )),





              ),
            );}
      );
    }
  }


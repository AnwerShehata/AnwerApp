  import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

  class TweenAnimation extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<TweenAnimation> with SingleTickerProviderStateMixin {

    AnimationController animationController;
    Animation animation , animationColors , animationBorderRadius ;

    double size = 100.0;


    @override
    void initState() {
      super.initState();
      animationController =AnimationController(vsync: this ,duration: Duration(seconds: 2));

      //  هذا الانيميشن يقوم بتغيير الحجم  من   100 الي 300 وهذا حجم الكونتينر
      animation = Tween(begin: 100.0, end: 300.0).animate(
          CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));

      //  هذا الانيميشن يقوم بتغيير للون من اللون الاحمر الي الون الاسفر علي حسب الالوان التي يتم تحديدها
      animationColors =  ColorTween(begin: Colors.red, end: Colors.amber).animate(
          CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));

      // هذا الانيميشن يقوم بتغيير BorderRadius  من 0 في حالة البداية وفي النهاية يكون 50 علي حسب الرقم المحدد
      // Curves.fastOutSlowIn هنا يتم اختيار نوع الحركة
      // Interval(0.5, 1.0 , هنا يتم تاخير الحركة
      animationBorderRadius = BorderRadiusTween(
          begin: BorderRadius.circular(0.0) , end: BorderRadius.circular(50)).animate(
          CurvedAnimation(parent: animationController, curve: Interval(0.5, 1.0 ,curve: Curves.fastOutSlowIn)));

      // هنا يتم تشغيل الانيميشن بدون هذا لا يعمل
      animationController.forward();
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

                    Center(
                      child: new Container(
                        height: animation.value, width: animation.value,
                        decoration: BoxDecoration(
                          color: animationColors.value,
                          borderRadius: animationBorderRadius.value
                        ),
                      ),
                    )

                  ],
                ),
              ),


              ),
            );}
      );
    }
  }


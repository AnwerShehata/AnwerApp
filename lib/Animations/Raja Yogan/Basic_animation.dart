  import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

  class Basic_animation extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<Basic_animation> with SingleTickerProviderStateMixin {

    Animation animation , animationChild , animationTwo ;
    AnimationController animationController;

    @override
    void initState() {
      super.initState();
      animationController = AnimationController(
      duration: Duration(seconds:10),  //هنا يقول كم ثانية سوف يستغرق التحريك
      vsync: this);

      // هنا يتم تغير اتجاة التحريك من begin  اذا كان الرقم 1.0 سوف يتحرك من اليمن الي اليسار
      // اذا كان الرقم   1.0- سوف يتحرك من اليسار  الي اليمن
      animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Interval(0.3, 1.0 ,curve:Curves.fastOutSlowIn,)));


      animationChild = Tween(begin: 10.0 , end: 150.0).animate(CurvedAnimation(
          parent: animationController, curve:Interval(0.0, 1.0 ,curve: Curves.fastLinearToSlowEaseIn))
      );

      animationTwo = Tween(begin: 150.0 , end: 30.0).animate(CurvedAnimation(
          parent: animationController, curve:Interval(0.0, 1.0 ,curve: Curves.fastLinearToSlowEaseIn))
      );


      animationController.forward();
    }

    @override
    Widget build(BuildContext context) {
      final double width = MediaQuery.of(context).size.width;

      return AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context  ,Widget child){
            return MaterialApp(
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


                    Center(child: new Container(
                      width: animationChild.value *2 -50,
                      height: animationChild.value * 2 - 50,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),),


                    SizedBox(height: 20),
                    Center(child: new Container(
                      width: animationTwo.value *2,
                      height: animationTwo.value * 2,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),)



                  ],
                ),
              ),


              ),
            );}
      );
    }
  }


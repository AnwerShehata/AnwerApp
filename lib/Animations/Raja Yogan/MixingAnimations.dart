  import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

  class MixingAnimations extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<MixingAnimations> with SingleTickerProviderStateMixin {

    Animation  animation ;
    AnimationController animationController;

    @override
    void initState() {
      super.initState();
      animationController = AnimationController(
      duration: Duration(seconds:1),  //هنا يقول كم ثانية سوف يستغرق التحريك
      vsync: this);

      animation =  Tween(begin: 0.0, end: -0.15).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear));

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


                //-------Body-------------------------------------
                body: new Stack(children: <Widget>[
                  new Center(child: Container(
                  padding: EdgeInsets.all(10.0),
                  width: 350.0,  height: 200.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0)),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      my_Button(radiusButton: 5 , onBtnclicked: (){} , colorButton: Colors.amber , horizontal: 5),
                      my_Button(radiusButton: 5 , onBtnclicked: (){} , colorButton: Colors.blue , horizontal: 5),
                    ],
                  ))),

                new Center(
                  child: GestureDetector(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 350.0,     height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image:NetworkImage("https://images.pexels.com/photos/1856488/pexels-photo-1856488.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            fit: BoxFit.cover)),
                    transform: Matrix4.translationValues(
                        0.0, animation.value *width , 0.0),
                  ),
                  onTap: () {
                    animationController.forward();
                  },
                  onDoubleTap: () {
                    animationController.reverse();
                  },
                    ))
          ]),

              ),
            );}
      );
    }
  }


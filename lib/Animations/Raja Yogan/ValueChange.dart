  import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

  class ValueChange extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<ValueChange> with SingleTickerProviderStateMixin {

    Animation  animation ;
    AnimationController animationController;

    @override
    void initState() {
      super.initState();
      animationController = AnimationController(
      duration: Duration(seconds:10),  //هنا يقول كم ثانية سوف يستغرق التحريك
      vsync: this);

      animation =  IntTween(begin: 0, end: 100).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut));

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
                    
                    Center(child: new Text("Loding...")),
                    new Text(animation.value.toString() , style: TextStyle(
                      fontSize: 60 , color: Colors.purple
                    ),)

                  ],
                ),
              ),


              ),
            );}
      );
    }
  }


  import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

  class Parenting extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<Parenting> with SingleTickerProviderStateMixin {

    Animation animation , animationTow , animationThree;
    AnimationController animationController;

    @override
    void initState() {
      super.initState();
      animationController = AnimationController(
      duration: Duration(seconds:2),  //هنا يقول كم ثانية سوف يستغرق التحريك
      vsync: this);

      // هنا يتم تغير اتجاة التحريك من begin  اذا كان الرقم 1.0 سوف يتحرك من اليمن الي اليسار
      // اذا كان الرقم   1.0- سوف يتحرك من اليسار  الي اليمن
      animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Interval(0.3, 1.0 ,curve:Curves.fastOutSlowIn,)));


      animationTow = Tween(begin: 1.0 , end: 0.0).animate(CurvedAnimation(
          parent: animationController, curve: Interval(0.5, 1.0 , curve: Curves.fastOutSlowIn)
      ));

      animationThree = Tween(begin: -1.0 , end: 0.0).animate(CurvedAnimation(
          parent: animationController, curve: Interval(0.7, 1.0 , curve: Curves.fastOutSlowIn)
      ));

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

//                //-------AppBar-------------------------------------
//                body: Transform(
//                    transform: Matrix4.translationValues(animation.value *width ,0.0 , 0.0),
//                    child: Center(child: _ContentPage())
//                ),

              body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[



                    Transform(
                        transform: Matrix4.translationValues(animation.value *width ,0.0 , 0.0),
                        child: new Text("Welcome Animation" , style: TextStyle(fontSize: 25),)),

                    SizedBox(height: 20),
                    Transform(
                      transform: Matrix4.translationValues(animationTow.value *width ,0.0 , 0.0),
                      child: Column(children: <Widget>[
                        my_TextField(horizontal: 50 , Radius: 5 , labelText: "Email"),
                        SizedBox(height: 10),
                        my_TextField(horizontal: 50 , Radius: 5 , labelText: "Password"),
                      ],)),


                    SizedBox(height: 10),
                    Transform(
                        transform: Matrix4.translationValues(animationThree.value *width ,0.0 , 0.0),
                        child: my_FlatButton(horizontal: 50,radiusButton: 5 , textButton: "Log In" ,onPressed: (){}))


                  ],
                ),
              ),


              ),
            );}
      );
    }
  }


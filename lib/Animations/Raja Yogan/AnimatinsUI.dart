  import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

  class AnimatinsUI extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<AnimatinsUI> with SingleTickerProviderStateMixin {

    Animation  cardAnimation , delayedCardAnimation , fabButtonanim , infoAnimation ;
    AnimationController animationController;

    @override
    void initState() {
      super.initState();

      animationController = AnimationController(duration: Duration(seconds:2), vsync: this);


      cardAnimation = Tween(begin: 0.0, end: -0.025).animate(
          CurvedAnimation(curve: Curves.fastOutSlowIn, parent: animationController));

      delayedCardAnimation = Tween(begin: 0.0, end: -0.05).animate(
          CurvedAnimation(
              curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
              parent: animationController));

      fabButtonanim = Tween(begin: 1.0, end: -0.0008).animate(CurvedAnimation(
          curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
          parent: animationController));

      infoAnimation = Tween(begin: 0.0, end: 0.030).animate(CurvedAnimation(
          curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
          parent: animationController));

    animationController.forward();
    }

    @override
    Widget build(BuildContext context) {
      final double width = MediaQuery.of(context).size.width;
      final devHeight = MediaQuery.of(context).size.height;

      animationController.forward();

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


                    Center(
                      child: new Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          //===================== Container Colors.amber ==========
                          Positioned(
                            top: -20, right: 35, left: 35,
                            child: new Container(
                              transform: Matrix4.translationValues(0.0 ,delayedCardAnimation.value * devHeight , 0.0),
                              width: width , height: 400,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(""))
                              ),
                            ),
                          ),

                          //===================== Container Colors.redAccent ==========
                          Positioned(
                            top: -10, right: 20, left: 20,
                            child: new Container(
                              transform: Matrix4.translationValues(0.0 ,cardAnimation.value * devHeight , 0.0),
                              width: width , height: 400,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(""))
                              ),
                            ),
                          ),


                          //===================== Container Image ==========
                          new Container(
                            width: width - 100, height: 400,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://images.pexels.com/photos/1927314/pexels-photo-1927314.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"))
                            ),
                          ),


                          //===================== Container Info ==========
                          Positioned(
                            bottom: -20, right: 20, left: 20,
                            child: new Container(
                              transform: Matrix4.translationValues(0.0 ,infoAnimation.value * devHeight , 0.0),
                              width: width -130, height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20) ,
                                  boxShadow: [new BoxShadow(color: Colors.grey.shade600, blurRadius: 5.0,),]
                              ),
                              child: Row(children: <Widget>[
                                new Expanded(flex: 2,child: Container( 
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text("Anwer" ,style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.w100),),
                                      new Text("Graphic Desiner" ,style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                )),
                                new Expanded(child: Container(
                                  child: Text("5.8 Km" ,style: TextStyle(fontSize: 20 , color: Colors.grey),),)),
                              ],),
                            ),
                          ),

                        ],
                      ),
                    ),

                    //===================== Container Button ==========
                    SizedBox(height: 50),
                    new Center(
                      child: Container(
                        transform: Matrix4.translationValues(0.0 ,fabButtonanim.value * devHeight , 0.0),
                        width: width - 70, height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            my_IconInContainer(heightWidth: 50 ,icon: Icons.clear ,
                                color1: Colors.grey.shade200.withOpacity(0.4),
                                color2: Colors.grey.shade300.withOpacity(0.6) ,
                                coloricon: Colors.black
                            ) ,
                            my_IconInContainer(heightWidth: 65 ,icon: Icons.chat,
                                color1: Colors.grey.shade200.withOpacity(0.4),
                                color2: Colors.grey.shade300.withOpacity(0.6) ,
                                coloricon: Colors.blue
                            ) ,
                            my_IconInContainer(heightWidth: 50 ,icon: Icons.favorite,
                              color1: Colors.grey.shade200.withOpacity(0.4),
                              color2: Colors.grey.shade300.withOpacity(0.6) ,
                              coloricon: Colors.redAccent
                            ) ,
                          ],
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


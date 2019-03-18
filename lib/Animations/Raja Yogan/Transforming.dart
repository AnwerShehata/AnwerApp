  import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

  class Transforming extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<Transforming> with SingleTickerProviderStateMixin {

    Animation  animation , animationTrans;
    AnimationController animationController;

    @override
    void initState() {
      super.initState();
      animationController = AnimationController(
      duration: Duration(seconds:1),  //هنا يقول كم ثانية سوف يستغرق التحريك
      vsync: this);

      // هنا يتم تغير اتجاة التحريك من begin  اذا كان الرقم 1.0 سوف يتحرك من اليمن الي اليسار
      // اذا كان الرقم   1.0- سوف يتحرك من اليسار  الي اليمن
      animation = Tween(begin: 0.0, end: 150.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.ease));

      animationTrans = BorderRadiusTween(
          begin: BorderRadius.circular(0.0),      // هنا يتم تحدد قيمةBorderRadius في بداية الانيميشن
          end: BorderRadius.circular(150.0),            // هنا يتم تحدد قيمةBorderRadius في نهاية الانيميشن
      ).animate(CurvedAnimation(
          parent: animationController,
          curve: Curves.ease                                // هنا يتم اختيار نوع الحركة التي سوف يقم بها
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


              body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    Center(
                      child: new Container(
                        width: animation.value *2,
                        height: animation.value *2,
                        decoration: BoxDecoration(
                          borderRadius: animationTrans.value,
                          color: Colors.grey,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: NetworkImage("https://cdn.pixabay.com/photo/2019/03/09/13/45/dubai-4044183__480.jpg"))
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


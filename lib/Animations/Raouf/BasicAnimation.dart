  import 'package:flutter/material.dart';
import 'package:anwerapp/Tools/app_tools.dart';

  class BasicAnimation extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<BasicAnimation> with SingleTickerProviderStateMixin {

    AnimationController animationController;

    @override
    void initState() {
      super.initState();

      animationController = AnimationController(
          vsync: this , duration: Duration(seconds: 1) ,lowerBound:50.0 , upperBound: 300.0);
      animationController.addListener((){
        setState(() {
        });
      });

//      animationController.forward();        // هنا نقولة له ابدأ الانيميشن
//        animationController.repeat();         // هنا يقوم بتكرار الانيميشن الي ما لانهاية

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

                    GestureDetector(onTap: (){
                      // هنا يقول عند الضغط سوف يتم تشغيل الحركة
                      if(animationController.status ==  AnimationStatus.dismissed){
                        animationController.forward();}
                        // وفي حالة اكتمال الحركة سوف يقوم برجوع الحركة الي الخلف
                        else if( animationController.status  == AnimationStatus.completed){
                        animationController.reverse();
                      }
                    },
                      child: Center(child:
                      new FlutterLogo(size: animationController.value )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: new Text("عند الضغط علي الوجو سوف يبدأ بتنفيذ الحركة  ....  واذا تم الضغط علي الوجو بعد اكتمال الحركة سوف يرجع بالحركة الي الخلف بكس عملت البدأ   " ,textAlign: TextAlign.center , style: TextStyle(fontSize: 18),),
                    ),





                  ],
                ),
              ),


              ),
            );}
      );
    }

  }


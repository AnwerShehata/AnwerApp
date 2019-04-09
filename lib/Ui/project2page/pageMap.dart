import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';



class pageMap extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<pageMap> with SingleTickerProviderStateMixin {
  Animation animation , animationLogo ,animationCon;
  AnimationController animationController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration(seconds: 2));

    animationLogo = Tween(begin: 1.0, end: -0.0008).animate(CurvedAnimation(
        curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));

    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double devHeight = MediaQuery.of(context).size.height;

    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context  ,Widget child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(


              appBar: AppBar(
                elevation: 0,
                leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){}),
              ),

              body: ListView(
                children: <Widget>[

                  new Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[

                      //====== هنا الجزء الذي سوف يظهر في الــ Maps ================
                      new Container(
                        height: MediaQuery.of(context).size.height-350,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://images.pexels.com/photos/1974856/pexels-photo-1974856.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"))
                        ),
                      ),

                       Positioned(
                        bottom: -90, left: 1, right: 1,
                        child: AvatarGlow(
                          glowColor: Colors.blue,
                          endRadius: 90.0,
                          duration: Duration(milliseconds: 2000),
                          repeatPauseDuration: Duration(milliseconds: 100),
                          child: Material(
                            elevation: 2,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor:Colors.grey[100] ,
                              radius: 55.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(55),
                                  image: DecorationImage(
                                    fit: BoxFit.cover, image: NetworkImage("https://www.seoclerk.com/pics/551103-1TOqFD1502285018.jpg"))
                                ),),
                            ),
                          ),
                        )
                      ),


                    ],
                  ),


                  //=============== هنا جزء الـــ   Container الذي يظهر اسفل الخريطة
                  SizedBox(height: 80),
                  Transform(
                    transform: Matrix4.translationValues(0.0 , animationLogo.value * devHeight , 0.0),
                    child: new Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.only(left: 10 ,top: 10 ,bottom: 10),
                      decoration: BoxDecoration(
                          boxShadow: [new BoxShadow(color: Colors.grey.shade400, blurRadius: 2.0,),],
                          borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Row(
                        children: <Widget>[

                          //====================== هنا الجزء الخاص بالــ Text =============
                          new Expanded(flex: 3,child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text("Cairo" , style: TextStyle(fontSize: 25),),
                                new Text("6 of October ,elhosary mosqs ue 25" , style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ],
                            ),
                          )),

                          //====================== هنا الجزء الخاص بايقونة الاتصال وزر view in map=============
                          new Expanded(flex: 2,
                            child: Container(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              //---IconButton Call ------
                              _IconCall(onTap: (){}),

                             //-- Icon Button View in map
                             my_ButtonIcon(
                               colorButton: Color(0xFF0cf49b) , radiusButton: 20 ,
                               textButton: "View in map" , icon: Icons.location_on,
                               onPressed: (){} ,
                             )

                              ],
                            ),
                          )),

                        ],
                      ),
                    ),
                  )



                ],
              ),







            ),
          );}
    );
  }


    GestureDetector _IconCall({GestureTapCallback onTap}) {
            return GestureDetector(
            onTap: onTap,
            child: new Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
            color: Colors.indigo , shape: BoxShape.circle,
            ),
            child: Icon(Icons.call ,color: Colors.white,size: 20,)),
            );
    }

  Widget my_ButtonIcon({
    VoidCallback onPressed,
    double horizontal : 0,
    double vertical : 0,
    String textButton: "Text Button",
    double fontSize : 12,
    double radiusButton : 0,
    double elevation : 0,
    Color colorText : Colors.white,
    double heightButton : 35,
    Color colorButton : Colors.blue,
    Color colorIcons : Colors.white,
    IconData  icon : Icons.add_alarm,
  }) {
    return Padding(
        padding: new EdgeInsets.symmetric(horizontal: horizontal , vertical: vertical ),
        child: new RaisedButton.icon(
          color: colorButton,
          elevation: elevation,
          onPressed: onPressed,
          icon: Container(
              height: heightButton,
              child: new Icon(icon,color: colorIcons)),
          label: Center(child: new Text(textButton , style: TextStyle(fontSize: fontSize),)),
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.all(new Radius.circular(radiusButton))),
          textColor: colorText,
        )
    );
  }

}

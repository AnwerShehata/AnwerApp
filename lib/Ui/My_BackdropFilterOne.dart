import 'dart:ui';
import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';

class My_BackdropFilterOne extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_BackdropFilterOne> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(



        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fitHeight,
                image: NetworkImage("https://images.pexels.com/photos/1769376/pexels-photo-1769376.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")),
          ),
          child: ListView(
            children: <Widget>[

              Center(
                child: new ClipRect(
                  child: BackdropFilter(filter: new ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                    child: new Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white.withOpacity(0.5) ,width: 1),
                          color: Colors.grey.shade200.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: <Widget>[

                          SizedBox(height: 20),
                          new Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white , width: 2),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(fit: BoxFit.cover,
                                  image: NetworkImage("https://cdn.pixabay.com/photo/2018/08/26/23/55/woman-3633737__480.jpg"))
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("In this videos we use the Font Awesome package to easily include a large variety of icons into "
                                "a Flutter application!In this videos we use the Font Awesome package to easily include a large variety "
                                "of icons into a Flutter application!",textAlign: TextAlign.center, style: TextStyle(color: Colors.white , fontWeight: FontWeight.w400),),
                          )



                        ],
                      ),
                    ),
                  ),
                ),
              ),


              SizedBox(height: 20),

              Center(
                child: ClipRect(
                  child:BackdropFilter(filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: new Container(
                      height: 100, width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white.withOpacity(0.5)),
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              my_ButtonIcon(textButton: "Delete" , icon: Icons.delete_sweep ,onPressed: (){} , colorButton: Colors.amber,radiusButton: 5),
                              SizedBox(width: 10,),
                              my_ButtonIcon(textButton: "Accepted" , icon: Icons.account_balance ,onPressed: (){} , radiusButton: 5),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )   ,

              SizedBox(height: 20),

              Center(
                child: ClipRect(
                  child:BackdropFilter(filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: new Container(
                      height: 100, width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white.withOpacity(0.5)),
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              my_ButtonIcon(textButton: "Delete" , icon: Icons.delete_sweep ,onPressed: (){} , colorButton: Colors.amber,radiusButton: 5),
                              SizedBox(width: 10,),
                              my_ButtonIcon(textButton: "Accepted" , icon: Icons.account_balance ,onPressed: (){} , radiusButton: 5),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Center(
                child: ClipRect(
                  child:BackdropFilter(filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: new Container(
                      height: 100, width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white.withOpacity(0.5)),
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              my_ButtonIcon(textButton: "Delete" , icon: Icons.delete_sweep ,onPressed: (){} , colorButton: Colors.amber,radiusButton: 5),
                              SizedBox(width: 10,),
                              my_ButtonIcon(textButton: "Accepted" , icon: Icons.account_balance ,onPressed: (){} , radiusButton: 5),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),


      ),
    );
  }
}
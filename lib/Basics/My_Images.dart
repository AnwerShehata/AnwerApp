import 'package:flutter/material.dart';

class My_Images extends StatelessWidget {

  final String imgURL;
  final String title;
//  final String id;
  const My_Images({Key key, this.imgURL , this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     appBar:  new AppBar(
       backgroundColor: Colors.black,
       elevation: 0.0,
       centerTitle: true,
       title: Text(title , style: TextStyle(fontFamily: "Cairo"),),),

      body: Hero(tag: "test",
        child: Container(color: Colors.black,
          child: Center(
            child: Container( color: Colors.grey,
              child: Image.network(imgURL , fit: BoxFit.fill,),
            ),
          ),
        ),
      ),

    );
  }
}

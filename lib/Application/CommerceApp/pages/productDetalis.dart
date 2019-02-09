import 'dart:ui';
import 'package:flutter/material.dart';
import '../HomeCommerceApp.dart';

import '../componets/StyleApp.dart';
import 'package:anwerapp/Tools/app_tools.dart';
import '../componets/products.dart';
import '../componets/Similar_products.dart';

class productDetalis extends StatefulWidget {
  final name_detalis;
  final picture_detalis;
  final old_price_detalis;
  final price_detalis;

  productDetalis({
    this.name_detalis,
    this.picture_detalis,
    this.old_price_detalis,
    this.price_detalis
    });
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<productDetalis> {

  //==== Function Size product================
  void SizeDialog(){
    showDialog(context: context,builder: (context){
      return new AlertDialog(
        title: Text("Size"),
        content: Text("Choose The Size"),
        actions: <Widget>[
          new MaterialButton(onPressed: (){Navigator.pop(context);},child: Text("close"),),
        ],
      );
    });
  }

  //==== Function Color product================
  void ColorDialog(){
    showDialog(context: context,builder: (context){
      return new AlertDialog(
        title: Text("Colors"),
        content: Text("Choose The Color"),
        actions: <Widget>[
          new MaterialButton(onPressed: (){Navigator.pop(context);},child: Text("close"),),
        ],
      );
    });
  }

  //==== Function QtyDialog product================
  void QtyDialog(){
    showDialog(context: context,builder: (context){
      return new AlertDialog(
        title: Text("Qty"),
        content: Text("Choose The Qty"),
        actions: <Widget>[
          new MaterialButton(onPressed: (){Navigator.pop(context);},child: Text("close"),),
        ],
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
//      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        //--------------------AppBar------------------------------
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: colorApp_pink,
          elevation: 0.0,
          title: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeCommerceApp()),);},
              child: new Text("product Detalis")),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon:Icon(Icons.search), onPressed: (){}),
          ],
        ),

        //--------------------body------------------------------
        body: ListView(
          children: <Widget>[

            //========== هنا الكونتينر الخاص بعرض صورة النتج والاسم والاسعار
            new Container(
              height: 300,
              child: GridTile(
                child: Container(child: Image.network("${widget.picture_detalis}",fit: BoxFit.cover,),),
                footer: ClipRect(
                  child: BackdropFilter(filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                    child: Container(
                        color: Colors.white.withOpacity(0.3),
                      child: ListTile(
                        leading: Text(widget.name_detalis,style: TextStyle(color: Colors.white ,fontSize: 20),),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("\$${widget.old_price_detalis}",style: TextStyle(color: colorApp_amber,decoration: TextDecoration.lineThrough),),
                            SizedBox(width: 10),
                            Text("\$${widget.price_detalis}",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                        ],),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //========== رز المقاس و الون و الكمية=================
            Container(
              color: Colors.grey.shade300,
              child: new Row(
                children: <Widget>[
                  _ButtonExpanded(name: "Size",onPressed: (){SizeDialog();}),
                  _ButtonExpanded(name: "Color",onPressed: (){ColorDialog();}),
                  _ButtonExpanded(name: "Qty",onPressed: (){QtyDialog();}),
                ],
              ),
            ),

            //========== رز اشتري الان وزر اضافة الي السلة وزر المفضلة=================
            Row(
              children: <Widget>[
                Expanded(child: my_Button(horizontal: 0,colorButton: Colors.amber,colorText: Colors.black,
                textButton: "Buy Now",onBtnclicked: (){}
                )),
                SizedBox(width: 20),
                IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,), onPressed: (){}),
                IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,), onPressed: (){}),
              ],
            ),

            //========== Product Details =================
          SizedBox(height: 10),
          Divider(),
          new ListTile(
            title: Text("Product Details"),
            subtitle: Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat  chunks as necessary, making this the "),
          ),

            SizedBox(height: 20),
            Divider(),
            new Row(
              children: <Widget>[
                Text("Product Name"), SizedBox(width: 20),
                Text(widget.name_detalis ,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10),
            new Row(
              children: <Widget>[
                Text("Product Brand"), SizedBox(width: 20),
                Text("Brand X" ,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10),
            new Row(
              children: <Widget>[
                Text("Product condition"), SizedBox(width: 20),
                Text("New" ,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),

            Divider(),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10), child: Text("Similar_products"),),
            Container(
              height: 360,
              child: Similar_products(),
            )



          ],
        ),



      ),
    );
  }

  Expanded _ButtonExpanded({
    String name = "Name",
    VoidCallback onPressed,
    Color color : Colors.white
    }) {
    return Expanded(
                    child: MaterialButton(onPressed: onPressed,
                      color: color,
                      elevation: 0,
                      height: 50,
                      textColor: Colors.black,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text(name)),
                          Expanded(child: Icon(Icons.arrow_drop_down)),
                        ],
                      ),
                ));
  }
}
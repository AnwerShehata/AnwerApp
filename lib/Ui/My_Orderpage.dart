import 'package:flutter/material.dart';


class My_Orderpage extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Orderpage> {


  final TextEditingController _orderController = new TextEditingController();
  String myOrder = "";

  String orderPrice(String orderPrice , deliveryPrice){
    if(orderPrice.isNotEmpty && int.parse(orderPrice) > 0)
    {
      double result = int.parse(orderPrice) + deliveryPrice;
      return myOrder = "$result    : k.d";
    }else{

      return  myOrder = "قم بادخال قيمة الطلب";
    }
    
  }

  int radioGroup = 0;
  void _radioEventHandler(int radioValue){
    setState(() {
      radioGroup = radioValue;
      switch(radioGroup)
      {
        case 1:    orderPrice(_orderController.text, 2.0); break;
        case 2:    orderPrice(_orderController.text, 3.0); break;
        case 3:    orderPrice(_orderController.text, 4.0); break;
      }
    });
  }


  // هذا الدالة تقوم بتفرغ المبلغ المكتبو
  void emptyText(){
    setState(() {
      _orderController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),

      home:  Directionality(textDirection: TextDirection.rtl,
        child: new Scaffold(

          //-------------- App bar --------------------------------------------------
          appBar: new AppBar(
            elevation: 0.0,
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: new Text("Order page"),),

          body: new ListView(
            padding: EdgeInsets.all(10.0),
            children: <Widget>[

              // image  asset ====================================
              new Padding(padding: EdgeInsets.all(10.0)),
              new Image.asset("img/route.png" , height: 150.0,),
              new Padding(padding: EdgeInsets.all(10.0)),

              //Card View  Text & Text Field =========================
              new Card(
                elevation: 3.0,
                child: Container( padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[

                      new Text("سوف يتم اضافة مبلغ التوصيل مع الطلب علي حسب المنطقة المحددة" ,
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 17.0 , color: Colors.brown ),
                      ),
                      new Divider(),
                      new Padding(padding: EdgeInsets.all(10.0)),

                      new Container(
                        child: Row(
                          children: <Widget>[
                            new  Expanded(
                              child: new TextField(
                                decoration: InputDecoration(
                                  labelText: " مبلغ الطلب ",
                                  hintText: "ادخل مبلغ الطلب ",
                                  icon: Icon(Icons.add_circle, size: 30.0,),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0) ,),
                                ),
                                style: new TextStyle(fontSize: 15.0, color:Colors.black),
                                controller: _orderController,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            
                            new Padding(padding: EdgeInsets.all(5.0)),

                            //===== عند الضغط علي الزر يتم حذف القيمة المكتوبه
                            new RaisedButton.icon(onPressed: emptyText,
                                icon: Icon(Icons.delete_sweep, color: Colors.white,),
                                label: new Text("حذف", style: TextStyle(color: Colors.yellow , fontSize: 20.0),),
                              color: Colors.lightBlue.shade900,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.yellow.shade900, width: 1.0),
                                  borderRadius: BorderRadius.circular(15.0)),
                            )

                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),


              //  Container RadioListTile ===========================
              new Padding(padding: EdgeInsets.all(10.0)),
              new Container(
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    new RadioListTile(
                        value: 1,
                        groupValue: radioGroup,
                        onChanged: _radioEventHandler,
                        title:  new Text("الفروانية "),
//                      subtitle:  new Text("سوف يتم اضافة قيمة  التوصيل"),
                        activeColor: Colors.brown,
                    ),

                      new RadioListTile(
                        value: 2,
                        groupValue: radioGroup,
                        onChanged: _radioEventHandler,
                        title:  new Text("السالمية"),
//                      subtitle:  new Text("سوف يتم اضافة قيمة  التوصيل"),
                        activeColor: Colors.brown,
                    ),

                      new RadioListTile(
                        value: 3,
                        groupValue: radioGroup,
                        onChanged: _radioEventHandler,
                        title:  new Text("الجهراء"),
//                      subtitle:  new Text("سوف يتم اضافة قيمة  التوصيل"),
                        activeColor: Colors.brown,
                    ),

                    new Text("$myOrder"  ,
                      style: new TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                    ),),


                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(10.0)),


            ],
          ),

        ),
      ),
    );
  }
}
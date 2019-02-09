import 'package:flutter/material.dart';

class cart_products extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<cart_products> {


  var product_onTheCart =[
    {
      "name": "anwer shehata",
      "picture": "https://cdn.pixabay.com/photo/2019/01/27/22/32/mountains-3959204_1280.jpg",
      "price": "100",
      "Size": "M",
      "Color": "Red",
      "quantity": 1,
    },
    {
      "name": "compress",
      "picture": "https://images.pexels.com/photos/1557328/pexels-photo-1557328.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "price": "85",
      "Size": "XLLL",
      "Color": "Red",
      "quantity": 2,
    },
    {
      "name": "photos",
      "picture": "https://images.pexels.com/photos/1127000/pexels-photo-1127000.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "price": "78",
      "Size": "XLL",
      "Color": "Red",
      "quantity": 5,
    },
    {
      "name": "pexels",
      "picture": "https://images.pexels.com/photos/1462637/pexels-photo-1462637.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "price": "98",
      "Size": "XL",
      "Color": "Red",
      "quantity": 7,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      physics: BouncingScrollPhysics(),
        itemCount: product_onTheCart.length,
        itemBuilder: (context , index){
          return Single_cart_Product(
            cart_prod_name: product_onTheCart[index]["name"],
            cart_prod_picture: product_onTheCart[index]["picture"],
            cart_prod_price: product_onTheCart[index]["price"],
            cart_prod_Color: product_onTheCart[index]["Color"],
            cart_prod_quantity: product_onTheCart[index]["quantity"],
            cart_prod_Size: product_onTheCart[index]["Size"],
          );
        }
    );
  }
}

class Single_cart_Product extends StatelessWidget{
final cart_prod_name;
final cart_prod_picture;
final cart_prod_price;
final cart_prod_Size;
final cart_prod_Color;
final cart_prod_quantity;

Single_cart_Product({
  this.cart_prod_name,
  this.cart_prod_picture,
  this.cart_prod_price,
  this.cart_prod_Size,
  this.cart_prod_Color,
  this.cart_prod_quantity}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2 ,vertical:7),
      child: new Material(
        elevation: 1,
        child: Container(
//          color: Colors.grey[100],
          child: Row(
            children: <Widget>[

              //======== Image Product ===========================
              new Expanded(flex: 2,child: Container(child: Image.network(cart_prod_picture,fit: BoxFit.cover,),)),

              //======== Data Product ===========================
              new Expanded(flex: 4,
                  child: Container(
                child: ListTile(
                  title: Text(cart_prod_name,style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Row(children: <Widget>[
                        Expanded(child: Row(children: <Widget>[
                          Text("Size :"),
                          SizedBox(width: 10,),
                          Text(cart_prod_Size,style: TextStyle(color: Colors.green.shade700),),
                        ],)),
                        Expanded(child: Row(children: <Widget>[
                          Text("Color :"),
                          SizedBox(width: 10,),
                          Text(cart_prod_Color,style: TextStyle(color: Colors.green.shade900),),
                        ],)),
                      ],),
                      new Text("\$${cart_prod_price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
                    ],
                  ),
                ),
              )),

              //======== quantity Product ===========================
              new Expanded(
              child: Container(
              child: Column(
                children: <Widget>[
                  new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
                  new Text(cart_prod_quantity.toString()),
                  new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
                ],
              ),
              )
              ),

            ],
          ),
        ),
      ),
    );
  }


}
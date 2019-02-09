import 'package:flutter/material.dart';
import '../pages/productDetalis.dart';

var product_list = [
  {
    "name": "anwer shehata",
    "picture":
        "https://cdn.pixabay.com/photo/2019/01/27/22/32/mountains-3959204_1280.jpg",
    "old_price": "120",
    "price": "85",
  },
  {
    "name": "Ali shehata",
    "picture":
        "https://cdn.pixabay.com/photo/2017/11/10/18/24/woman-2937182__480.jpg",
    "old_price": "200",
    "price": "57",
  },
  {
    "name": "Omer shehata",
    "picture":
        "https://cdn.pixabay.com/photo/2016/07/01/22/34/people-1492052__480.jpg",
    "old_price": "120",
    "price": "99",
  },
  {
    "name": "Talal shehata",
    "picture":
        "https://cdn.pixabay.com/photo/2016/02/05/04/49/australia-1180394__480.jpg",
    "old_price": "120",
    "price": "45",
  },
];

class products extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]["name"],
            prod_picture: product_list[index]["picture"],
            prod_old_price: product_list[index]["old_price"],
            prod_price: product_list[index]["price"],
          );
        });
  }
}

//==== class Single_prod ============
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_price,
      this.prod_old_price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(child: Hero(
        tag: Text("hero 1"),
        child: Material(
          child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>
              productDetalis(
                name_detalis: prod_name,
                picture_detalis:prod_picture,
                old_price_detalis: prod_old_price,
                price_detalis: prod_price,
              )),);},
            child: GridTile(
              child: Image.network(prod_picture, fit: BoxFit.fill,),
              footer: new Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.black.withAlpha(100),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text(prod_name,style: TextStyle(color: Colors.white),)),
                    Text("\$${prod_price}",style: TextStyle(color: Colors.amber,fontSize: 18),)
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}

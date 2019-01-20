import 'package:flutter/material.dart';
import '../Tools/app_tools.dart';

class My_Expansion extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Expansion> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        
        appBar: AppBar(
          title: Text("Expansion"),
          elevation: 0,
          centerTitle: true,
        ),

        body: ListView(
          padding: EdgeInsets.all(2),
          children: <Widget>[


            buildExpansionTile(title: "ExpansionTile One" ,image: "https://cdn.pixabay.com/photo/2018/11/15/22/20/foal-3818264_1280.jpg"),
            buildExpansionTile(title: "ExpansionTile Two" ,image: "https://cdn.pixabay.com/photo/2018/11/15/22/52/wolf-3818343__480.jpg"),
            buildExpansionTile(title: "ExpansionTile Three" ,image: "https://cdn.pixabay.com/photo/2018/11/29/23/34/cat-3846780__480.jpg"),




          ],
        ),



      ),
    );
  }

  ExpansionTile buildExpansionTile({
  String image :"",
  String title :"",
}) {
    return new ExpansionTile(
            title: Text(title),
            backgroundColor: Colors.blueGrey.shade100.withOpacity(0.5),
            initiallyExpanded: false,
            children: <Widget>[
              new Container(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget>[
                    Text("Welcome to Flutter" , style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10),
                    new Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(fit: BoxFit.cover,
                            image: NetworkImage(image)),
                      ),
                    ),
                    SizedBox(height: 10),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        my_FlatButtonIcon(textButton: "Delete" , icon: Icons.delete , radiusButton: 10 ,onPressed: (){}),
                        my_FlatButtonIcon(textButton: "Edit" , icon: Icons.edit , radiusButton: 10 ,onPressed: (){}),
                        my_FlatButtonIcon(textButton: "Updata" , icon: Icons.cloud_upload , radiusButton: 10 ,onPressed: (){}),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              )
            ],
          );
  }
}
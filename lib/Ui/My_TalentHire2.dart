import 'package:flutter/material.dart';

class My_TalentHire extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_TalentHire> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: new Icon(Icons.menu, color:Colors.grey,),
          title: new FlutterLogo(colors: Colors.green, size: 25.0,),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu , color: Colors.grey,),
              color: Colors.grey,
              onPressed: (){},
            )
          ],
        ),

        body: ListView(
          children: <Widget>[

            new Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[

                _TextHolderContainer(),

                new Container(
                  margin: EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [ BoxShadow(blurRadius: 15.0 , color: Colors.grey.shade200)]
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      //  === Stack YOU HAVE 206
                      Stack(
                        children: <Widget>[

                          new Container(
                            padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                            child: Text("YOU HAVE" , style: TextStyle(color: Colors.grey , fontSize: 14.0),),
                          ),
                          new Container(
                            padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                            child: Text("206" , style: TextStyle(color: Colors.black , fontSize: 40.0),),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.all(40.0)),

                      //  === Container Buy more
                      new Container(
                        alignment: Alignment.center,
                        height: 60.0, width: 140.0,
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(10.0),),
                        child: new Text("Buy more" , style: TextStyle(fontSize: 20.0, color: Colors.green , fontWeight:FontWeight.bold ),),
                      )

                    ],
                  ),
                ),

              ],
            ),

            new Padding(padding: EdgeInsets.all(20.0)),
            new Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text("MY COACHES"),
                  new Text("VIEW PAST SEESSIONS "),
                ],
              ),
            ),

            new Padding(padding: EdgeInsets.all(30.0)),
            GridView.count(padding: EdgeInsets.symmetric(horizontal: 8.0),
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: <Widget>[
                _buildCard("anwer", "sdf", 88),
                _buildCard("anwer", "sdf", 88),
                _buildCard("anwer", "sdf", 88),
                _buildCard("anwer", "sdf", 88),
                _buildCard("anwer", "sdf", 88),
                _buildCard("anwer", "sdf", 88),
                _buildCard("anwer", "sdf", 88),
              ],
            )




          ],
        ),




      ),
    );
  }

  Container _TextHolderContainer() {
    return new Container(alignment: Alignment.center,
      height: 100.0, color: Colors.white,
      child: new Text("Get coaching"),
    );
  }


  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            Stack(children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'))),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: status == 'Away' ? Colors.amber : Colors.green,
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0)),
              )
            ]),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey),
            ),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 175.0,
                    decoration: BoxDecoration(
                      color: status == 'Away' ? Colors.grey : Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Text(
                        'Request',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Quicksand'),
                      ),
                    )))
          ],
        ),
        margin: cardIndex.isEven
            ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }
}
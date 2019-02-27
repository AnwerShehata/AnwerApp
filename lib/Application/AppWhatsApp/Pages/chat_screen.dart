import 'package:flutter/material.dart';
import '../models/chat_models.dart';

class chat_screen extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<chat_screen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: dummyData.length,
      itemBuilder: (context , i){
        return Column(children: <Widget>[

          new Divider(height: 10),
          new ListTile(
            trailing: Text(dummyData[i].time),
            title: Text(dummyData[i].name),
            subtitle: Text(dummyData[i].message),
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
          )
        ],);
      },
    );
  }
}
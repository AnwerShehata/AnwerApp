import 'package:flutter/material.dart';

class AnwerDrawer extends StatefulWidget {

  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<AnwerDrawer> {
  @override
  Widget build(BuildContext context) {

    return new Drawer(
      child: new ListView(
        children: <Widget>[

          // Header Drawer =====================
          new UserAccountsDrawerHeader(
            accountName: Text("Anwar shehata ", style: TextStyle(color: Colors.black),),
            accountEmail: Text("anwershehata@gmail.com" , style: TextStyle(color: Colors.black),),
            decoration: BoxDecoration(
                color: Colors.grey.shade200
//                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/22/19/08/blur-1850082__480.jpg"), fit: BoxFit.cover),
            ),

            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/08/05/00/12/people-2581913__480.jpg"),
              ),
            ),
          ),

          // Body Drawer =====================
          ListTile(
            title: new Text("Home Page "),
//                subtitle: new Text("الصفحة الرئيسية"),
            onTap: (){},
            leading: new Icon(Icons.home),
//                trailing: Switch(value: true, onChanged: ching),   هنا يتم اضافة عنصر سوايتش او اي عنصر اخر يعمل عند الضغط
          ),


          ListTile(
            title: new Text("My Account"),
//                subtitle: new Text("الصفحة الرئيسية"),
            onTap: (){},
            leading: new Icon(Icons.supervisor_account),
//                trailing: Switch(value: true, onChanged: ching),   هنا يتم اضافة عنصر سوايتش او اي عنصر اخر يعمل عند الضغط
          ),

          ListTile(
            title: new Text("Home Orders "),
//                subtitle: new Text("الصفحة الرئيسية"),
            onTap: (){},
            leading: new Icon(Icons.shopping_basket),
//                trailing: Switch(value: true, onChanged: ching),   هنا يتم اضافة عنصر سوايتش او اي عنصر اخر يعمل عند الضغط
          ),

          ListTile(
            title: new Text("Categories  "),
//                subtitle: new Text("الصفحة الرئيسية"),
            onTap: (){},
            leading: new Icon(Icons.grid_on),
//                trailing: Switch(value: true, onChanged: ching),   هنا يتم اضافة عنصر سوايتش او اي عنصر اخر يعمل عند الضغط
          ),

          ListTile(
            title: new Text("Favourites"),
//                subtitle: new Text("الصفحة الرئيسية"),
            onTap: (){},
            leading: new Icon(Icons.favorite),
//                trailing: Switch(value: true, onChanged: ching),   هنا يتم اضافة عنصر سوايتش او اي عنصر اخر يعمل عند الضغط
          ),

          new Divider(),
          ListTile(
            title: new Text("Settings"),
//                subtitle: new Text("الصفحة الرئيسية"),
            onTap: (){},
            leading: new Icon(Icons.settings),
//                trailing: Switch(value: true, onChanged: ching),   هنا يتم اضافة عنصر سوايتش او اي عنصر اخر يعمل عند الضغط
          ),

          ListTile(
            title: new Text("About "),
//                subtitle: new Text("الصفحة الرئيسية"),
            onTap: (){},
            leading: new Icon(Icons.announcement),
//                trailing: Switch(value: true, onChanged: ching),   هنا يتم اضافة عنصر سوايتش او اي عنصر اخر يعمل عند الضغط
          ),


        ],
      ),
    );



  }
}
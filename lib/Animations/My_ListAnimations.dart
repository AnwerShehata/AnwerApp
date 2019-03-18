import 'package:flutter/material.dart';

import './Raja Yogan/Basic_animation.dart';
import './Raja Yogan/Transforming.dart';
import './Raja Yogan/Parenting.dart';
import './Raja Yogan/ValueChange.dart';
import './Raja Yogan/MixingAnimations.dart';
import './Raja Yogan/AnimatinsUI.dart';
import './Raouf/BasicAnimation.dart';
import './Raouf/TweenAnimation.dart';
import './Raouf/AnimatedBuilderOne.dart';
import './Raouf/StaggeredAnimation.dart';
import './Raouf/ImplicitlyAnimated.dart';


class My_ListAnimations extends StatefulWidget {
  final String nameAppBar;
  const My_ListAnimations({Key key, this.nameAppBar}) : super(key: key);
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_ListAnimations> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        

        // --------- App Bar -----------------------------------------------------
        appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: new Text(" Animations "),
          backgroundColor: Colors.green,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),

        ),


        // --------- Body -----------------------------------------------------
        body: ListView(
          children: <Widget>[

            _ItemListView(title: "Basic animation"  ,subtitle: "هنا يتم تحريك العنصر من اليمين الي اليسار والعكس ",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Basic_animation()),);}
            ),

          _ItemListView(title: "Parenting animation"  ,subtitle: "هنا يتم  تكبير او تضغير الكونتينر  ",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Parenting()),);}
            ),

          _ItemListView(title: "Transforming animation"  ,subtitle: "هنا يتم  تكبير او تضغير الكونتينر  ",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Transforming()),);}
            ),

          _ItemListView(title: "ValueChange animation"  ,subtitle: "هنا يتم  تكبير او تضغير الكونتينر  ",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ValueChange()),);}
            ),

          _ItemListView(title: "Mixing Animations "  ,subtitle: "هنا يتم  تكبير او تضغير الكونتينر  ",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MixingAnimations()),);}
            ),

          _ItemListView(title: "AnimatinsUI "  ,subtitle: "هنا يتم  تكبير او تضغير الكونتينر  ",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatinsUI()),);}
            ),

          _ItemListView(title: "BasicAnimation "  ,subtitle: "BasicAnimation",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => BasicAnimation()),);}
            ),

          _ItemListView(title: "TweenAnimation "  ,subtitle: "TweenAnimation",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TweenAnimation()),);}
            ),

          _ItemListView(title: "AnimatedBuilderOne "  ,subtitle: "AnimatedBuilderOne",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatedBuilderOne()),);}
            ),


          _ItemListView(title: "TweenSequenceOne "  ,subtitle: "TweenSequenceOne",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => StaggeredAnimation()),);}
            ),

          _ItemListView(title: "ImplicitlyAnimated "  ,subtitle: "ImplicitlyAnimated",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ImplicitlyAnimated()),);}
            ),




          ],
        ),
      ),
    );
  }


  GestureDetector _ItemListView({
    GestureTapCallback onTap ,
    String title: "name item",
    String subtitle : "sadsada",
  }) {
    return GestureDetector(onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 5),
        child: new Container(
          decoration: BoxDecoration(
              color: Colors.green.shade100.withOpacity(0.2),
              borderRadius: BorderRadius.circular(6) ,border: Border.all(width: 1 ,color: Colors.green.shade200)
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new ListTile(
                title: new Text(title,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w400 ),),
                subtitle: new Text(subtitle ,style: TextStyle(color: Colors.grey.shade500, fontSize: 13),),
                trailing: Icon(Icons.arrow_forward_ios ,color: Colors.green.withOpacity(0.5),),
              )
            ],
          ),
        ),
      ),
    );
  }


}
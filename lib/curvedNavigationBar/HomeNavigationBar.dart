import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './Page/pageHome.dart';
import './Page/pagePrint.dart';
import './Page/pageCamera.dart';
import './Page/pageSound.dart';
import './Page/pageChat.dart';


class HomeNavigationBar extends StatefulWidget {
  @override
  _HomeNavigationBarState createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {

  //هنا يقول صفحة البداية علي حسب رقم الـــ Index
  int _pageIndex = 2;

  // هنا الصفحات التي سوف يتم التنقل بينهم عن طريق NavigationBar
  final pageChat _chat = new pageChat();
  final pageSound _sound = new pageSound();
  final pageHome _home = new pageHome();
  final pageCamera _camera = new pageCamera();
  final pagePrint _print = new pagePrint();


  Widget _showpage = new pageHome();
  Widget _pageChooser(int page){
    switch(page){

      case 0 : return _chat ;
      break;

      case 1 : return _sound ;
      break;

      case 2 : return _home ;
      break;

      case 3 : return _camera ;
      break;

      case 4 : return _print ;
      break;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          initialIndex: _pageIndex,
          items: <Widget>[
            Icon(Icons.chat, size: 25),
            Icon(Icons.volume_up, size: 25),
            Icon(Icons.home, size: 25),
            Icon(Icons.camera, size: 25),
            Icon(Icons.print, size: 25),
          ],

          // هنا لون Bar
          color: Colors.amber,
          // هنا لون الزر
          buttonBackgroundColor: Colors.amberAccent.shade700,
          // هنا لون الخلفية التي تظهر خلف الزر
          backgroundColor: Colors.white,
          //هنا الحركة
          animationCurve: Curves.easeInOut,
          // هنا الوقت المحدد لتنفيذ الحركة
          animationDuration: Duration(milliseconds: 600),

          onTap: (int tappedIndex) {
            setState(() {
              _showpage = _pageChooser(tappedIndex);
            });
          },
        ),

        body: Container(
          color: Colors.blueAccent,
          child: Center(
          child: _showpage,
          ),
        )

    );
  }
}
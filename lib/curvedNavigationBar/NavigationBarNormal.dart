import 'package:flutter/material.dart';
import './Page/pageHome.dart';
import './Page/pagePrint.dart';
import './Page/pageCamera.dart';
import './Page/pageSound.dart';
import './Page/pageChat.dart';

class NavigationBarNormal extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<NavigationBarNormal> {

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
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //====bottomNavigationBar===============================================
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('chat')),
            BottomNavigationBarItem(icon: Icon(Icons.volume_up), title: Text('Sound')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.camera), title: Text('camera')),
            BottomNavigationBarItem(icon: Icon(Icons.print), title: Text('print')),
          ],
          type: BottomNavigationBarType.fixed,      // لاظهار باقي العناصر التي تم اختفائها
          currentIndex: _pageIndex,
          elevation: 0,
          unselectedItemColor: Colors.blueGrey,
          backgroundColor: Colors.blueGrey.shade100.withOpacity(0.6),
          onTap: (int tappedIndex){
            setState(() {
              _showpage = _pageChooser(tappedIndex);
            });
          },
        ),

          body: Container(
            child: Center(
              child: _showpage,
            ),
          ),

      ),
    );
  }
}
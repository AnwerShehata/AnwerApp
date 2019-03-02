  import 'package:audioplayers/audio_cache.dart';
  import 'package:audioplayers/audioplayers.dart';
  import 'package:flutter/material.dart';
  import './player_widgetTow.dart';


  typedef void OnError(Exception exception);
  const kUrl1 = 'https://images.alarab.com/data/static/MMS_Files/MP3/mp3_files/H/Hussien%20El%20Jassmy/Alarab_Hussin-eljasmni_Tomoh-Algharam.mp3';

  class HomeMusic extends StatefulWidget {
    @override
    _ExampleAppState createState() => new _ExampleAppState();
  }

  class _ExampleAppState extends State<HomeMusic> {

    AudioCache audioCache = new AudioCache();
    AudioPlayer advancedPlayer = new AudioPlayer();
    String localFilePath;

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(

          appBar: AppBar(
            title: Text("Play Music"),
            elevation: 0,
          ),

          body: Center(child: PlayerWidget(url: kUrl1),)
        ),
      );
    }
  }

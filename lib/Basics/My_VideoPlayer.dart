import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class My_VideoPlayer extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_VideoPlayer> {

  VideoPlayerController playerControllerr;
  VoidCallback listener;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listener=(){
      setState(() {});
    };
  }

  void createVideo() {
    if (playerControllerr == null) {
      playerControllerr = VideoPlayerController.network(
          "https://r3---sn-vgqsknez.googlevideo.com/videoplayback?source=youtube&mime=video%2Fmp4&itag=22&key=cms1&requiressl=yes&beids=%5B9466592%5D&ratebypass=yes&fexp=9466586,23724337&ei=g3jiWvfCL4O_8wScopaICA&signature=43C209DD37289D74DB39A9BBF7BC442EAC049426.14B818F50F4FA686C13AF5DD1C2A498A9D64ECC9&fvip=3&pl=16&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&ip=54.163.50.118&lmt=1524616041346022&expire=1524813027&ipbits=0&dur=1324.768&id=o-AJvotKVxbyFDCz5LQ1HWQ8TvNoHXWb2-86a_50k3EV0f&rm=sn-p5qyz7s&req_id=e462183e4575a3ee&ipbypass=yes&mip=96.244.254.218&redirect_counter=2&cm2rm=sn-p5qe7l7s&cms_redirect=yes&mm=34&mn=sn-vgqsknez&ms=ltu&mt=1524791367&mv=m")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerControllerr.value.isPlaying) {
        playerControllerr.pause();
      } else {
        playerControllerr.initialize();
        playerControllerr.play();
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        body: Center(
            child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  child: (playerControllerr != null
                      ? VideoPlayer(
                    playerControllerr,
                  )
                      : Container()),
                ))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            createVideo();
            playerControllerr.play();
          },
          child: Icon(Icons.play_arrow),
        ),


      ),
    );
  }
}
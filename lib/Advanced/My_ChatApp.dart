    import 'package:flutter/material.dart';
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/foundation.dart';

    final ThemeData IOSTheme = new ThemeData(
      primaryColor: Colors.red,
      primarySwatch: Colors.green.shade400,
      primaryColorBrightness: Brightness.dark
    );

    final ThemeData androidTheme = new ThemeData(
      primaryColor: Colors.blue.shade800,
      primarySwatch: Colors.green.shade100,
    );

    const String defaultUserName = "Anwer shehata";

  class ChatApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: "Chat Application",
        theme: defaultUserName == TargetPlatform.iOS? IOSTheme : androidTheme,
        home: new Chat(),
      );
    }
  }

  class Chat extends StatefulWidget {
    @override
    _ChatState createState() => _ChatState();
  }
  
  class _ChatState extends State<Chat> with TickerProviderStateMixin {
    final List<Msg> _message = <Msg>[];
    final TextEditingController _textEditingController = new TextEditingController();
    bool _isWriting = false;

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(

          //-----------------AppBar-------------------------------
          appBar: new AppBar(
            title: Text(" chat Application "),
            elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
          ),

          //-----------------Body-------------------------------
          body: new Column(
            children: <Widget>[

              new Flexible(
                child: new ListView.builder(
                  itemBuilder: (_ , int index) => _message[index],
                  itemCount: _message.length,
                  reverse: true,
                  padding: new EdgeInsets.all(6),
                ),),
                new Divider(height: 1.0,),
                new Container(
                  child: _buildComposer(),
                  decoration: new BoxDecoration(
                    color: Theme.of(context).cardColor),
                )


            ],
          ),
        ),
      );
    }

    Widget _buildComposer(){
      return new IconTheme(
          data: new IconThemeData(color: Theme.of(context).accentColor),
          child: new Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: new Row(
              children: <Widget>[
                new Flexible(child: new TextField())
              ],
            ),
          )
      );
    }
  }



  class Msg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  }
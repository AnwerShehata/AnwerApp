    import 'package:flutter/material.dart';
    import 'package:font_awesome_flutter/font_awesome_flutter.dart';
    import 'package:google_sign_in/google_sign_in.dart';
    import 'package:firebase_auth/firebase_auth.dart';
    import 'package:cloud_firestore/cloud_firestore.dart';
    import 'package:flutter_spinkit/flutter_spinkit.dart';

    import './AddData.dart';
    import 'package:anwerapp/Tools/app_tools.dart';
    import './PageLogin.dart';
    import './EditData.dart';

    class Firebase_ListView extends StatefulWidget {
      final FirebaseUser user;
      final GoogleSignIn googleSignIn;
      const Firebase_ListView({Key key, this.user, this.googleSignIn}) : super(key: key);
      _BirdState createState() => new _BirdState();
    }

    class _BirdState extends State<Firebase_ListView> {

      //==============  هنا الكود المسئول عند تسجيل الخروج
      void _SignOut(){
        widget.googleSignIn.signOut();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PageLogin()),);
      }

      //==============  جلب البيانات من الفايربيس
      QuerySnapshot dataSnapshot;
      getData() async{
        return await Firestore.instance.collection("Task").getDocuments();
      }

      // هذا الدالة تقوم بحذف العنصر المحدد من قاعد البيانات
      void _deleteNote(BuildContext context ,int postions ){
        Firestore.instance.runTransaction((transaction) async{
          DocumentSnapshot snapshot  =
          await transaction.get(dataSnapshot.documents[postions].reference);
          await transaction.delete(snapshot.reference);
        });
        Navigator.pop(context);
      }

      //=== عند فتح التطبيق سوف يتم جلب البيانات اتوماتكي من قاعدة البيانات
      @override
      void initState() {
        getData().then((results){
          setState(() {
            dataSnapshot = results;
          });
        });
        super.initState();
      }

      //=== هنا يقوم بعمل رفرش للبيانات بحيث تظهر احر تحديثات
      void _Refresh(){
        getData().then((results){
          setState(() {
            dataSnapshot = results;
          });
        });
      }



      @override
      Widget build(BuildContext context) {
        return new MaterialApp(
          debugShowCheckedModeBanner: false,
//          theme: new ThemeData(primaryColor: Colors.deepPurple , fontFamily: "Cairo"),
          home:  new Scaffold(

            //=============Body========================
            floatingActionButton: FloatingActionButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AddData(email: widget.user.email,)),);},
              elevation: 0,
              backgroundColor: Colors.blue.shade900,
              child: Icon(Icons.add,color: Colors.white, size: 35,),
            ),

            //=============Body========================
            body: Container(
              child: Column(
                children: <Widget>[
                  new Container(
                    height: 150,
                    color: Colors.blue.shade900,
                    child: Row(
                      children: <Widget>[
                        //==== هنا تظهر صور المستخدم الذي قام بتسجيل الدخول
                        SizedBox(height: 10),
                        new Expanded(flex: 1,child: Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Center(
                            child: my_ImageCircleAccount(imagURL: "${widget.user.photoUrl}", height: 65 ,width: 65),
                          )
                        )),

                        //======= هنا يظهر اسم المستخدم والايميل الخاص به
                        new Expanded(flex: 3,child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Text("User : ${widget.user.displayName}",style: TextStyle(fontSize: 15 ,color: Colors.white),),
                              Text("Email : ${widget.user.email }",style: TextStyle(color: Colors.amber ,fontSize: 13),),
                            ],
                          ),
                        )),

                        //============= هنا زر تسجيل الخروج وتحديث البيانات
                        new Expanded(flex: 2,child: Container(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                IconButton(icon: Icon(Icons.exit_to_app ,color: Colors.white,), onPressed: (){_simpleDialogSignOut();}),
                                IconButton(icon: Icon(Icons.refresh ,color: Colors.white,), onPressed: (){_Refresh();}),
                              ],
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Expanded(child: _contenerData())
                ],
              ),
            )
          ),
        );
      }


      //======= Widget Contener  ===========================
      Widget _contenerData(){
        if(dataSnapshot != null){
          return new ListView.builder(
              itemCount: dataSnapshot.documents.length,
              padding: EdgeInsets.all(5),
              itemBuilder: (BuildContext context ,  int postions){
                String title = "${dataSnapshot.documents[postions].data["title"].toString()}";
                String note = "${dataSnapshot.documents[postions].data["note"].toString()}";
                String email = "${dataSnapshot.documents[postions].data["email"].toString()}";
                String date = "${dataSnapshot.documents[postions].data["Data"].toString()}";

                return new Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(bottom: 3),
                      child: Container(
                        color: Colors.grey.shade100,
                        child: new Row(
                          children: <Widget>[
                            
                            new Expanded(flex: 3,child: ListTile(
                              onTap: (){},
                              title: Text(title),
                              subtitle: Text(note),
                              leading: CircleAvatar(child: Text("${postions +1}"),),
                            )),
                            
                            new Expanded(child: Container(
                              child: Row(
                                children: <Widget>[
                                  // هنا زر الانتقال الي صفحة تحديث البيانات
                                  Expanded(child: new IconButton(icon: Icon(Icons.edit , color: Colors.blue,),
                                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>EditData(
                                        title: title ,
                                        note: note,
                                        duedate: dataSnapshot.documents[postions].data["Data"],
                                        index: dataSnapshot.documents[postions].reference,
                                      ) ));})),

                                  // هنا زر حذف البيانات
                                  Expanded(child: new IconButton(icon: Icon(Icons.delete , color: Colors.red,),
                                      onPressed: (){_simpleDialogDeleteData(context, postions);})),
                                ],
                              ),
                            ))

                          ],
                        ),
                      ),
                    ),
                    Divider()
                  ],
                );
              }
          );
        }else{ return Center(child: SpinKitCircle(color: Colors.purple.shade500, size: 100,)); }
      }

      //======= _simpleDialog SignOut ===========================
      void _simpleDialogSignOut() async {
        switch (await showDialog(context: context,
            builder: (BuildContext context)
            {
              return new SimpleDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                //                  title: const Text('هل تريد حذف هذا الطالب', style: TextStyle(fontFamily: "Cairo"),),
                children: <Widget>[
                  new Center(child: my_ImageCircleAccount(imagURL: "${widget.user.photoUrl}" ,height: 150 ,width: 150 ,borderRadius: 100),),
                  Center(child: new Text("هل تريد تسجيل الخروج",style: TextStyle(fontFamily: "Cairo" , fontSize: 17),)),
                  SizedBox(height: 20,),

                  new Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //هنا اذا تم الضغط علي نعم سوف يتم استدعاء دالة حذف العنصر
                      new Container(alignment: Alignment.center,
                        height: 60 , width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue, borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,bottomLeft: Radius.circular(10)),
                        ),
                        child:  new SimpleDialogOption(
                          onPressed: (){_SignOut();},
                          child:  const Text("نعم ", style: TextStyle(fontFamily: "Cairo"),),
                        ) ,
                      ),

                      //هنا اذا تم الضغط علي زر لا سوف يتم العود بدون فعل اي شي
                      new Container(alignment: Alignment.center,
                        height: 60 , width: 120,
                        decoration: BoxDecoration(
                          color: Colors.amber, borderRadius: BorderRadius.only(topRight: Radius.circular(10) ,bottomRight: Radius.circular(10)),
                        ),
                        child:  new SimpleDialogOption(
                          onPressed: (){Navigator.pop(context,true);} ,
                          child: new Text("لا", style: TextStyle(fontFamily: "Cairo"),),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
        )) {default:}
      }

      //======= _simpleDialog DeleteData ===========================
      void _simpleDialogDeleteData(BuildContext context ,int postions) async {
        switch (await showDialog(context: context,
            builder: (BuildContext context)
            {
              return new SimpleDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                //                  title: const Text('هل تريد حذف هذا الطالب', style: TextStyle(fontFamily: "Cairo"),),
                children: <Widget>[
                  new Icon(Icons.delete ,size: 80, color: Colors.red,),
                  Center(child: new Text("هل تريد الحذف ",style: TextStyle(fontFamily: "Cairo" , fontSize: 17),)),
                  SizedBox(height: 20,),

                  new Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //هنا اذا تم الضغط علي نعم سوف يتم استدعاء دالة حذف العنصر
                      new Container(alignment: Alignment.center,
                        height: 60 , width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue, borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,bottomLeft: Radius.circular(10)),
                        ),
                        child:  new SimpleDialogOption(
                          onPressed: (){_deleteNote(context, postions);},
                          child:  const Text("نعم ", style: TextStyle(fontFamily: "Cairo"),),
                        ) ,
                      ),

                      //هنا اذا تم الضغط علي زر لا سوف يتم العود بدون فعل اي شي
                      new Container(alignment: Alignment.center,
                        height: 60 , width: 120,
                        decoration: BoxDecoration(
                          color: Colors.amber, borderRadius: BorderRadius.only(topRight: Radius.circular(10) ,bottomRight: Radius.circular(10)),
                        ),
                        child:  new SimpleDialogOption(
                          onPressed: (){Navigator.pop(context,true);} ,
                          child: new Text("لا", style: TextStyle(fontFamily: "Cairo"),),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
        )) {default:}
      }


    }

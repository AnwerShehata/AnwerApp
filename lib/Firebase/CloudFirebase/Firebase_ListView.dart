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
          theme: new ThemeData(primaryColor: Colors.deepPurple),
          home:  new Scaffold(


            //=============AppBar======================
            appBar: AppBar(
              //هنا يتم جلب اسم المستخدم الذي قام بتسجيل الدخول
              title: Text("${widget.user.displayName}"),
              elevation: 0,
              centerTitle: false,
              //هنا يتم جلب الصورة الخاصة بالمستخدم الذي قام بتسجيل الدخول
              leading: my_ImageCircleAccount(imagURL:"${widget.user.photoUrl}"),
              actions: <Widget>[
               IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){_simpleDialog();}),
               IconButton(icon: Icon(Icons.refresh), onPressed: (){_Refresh();}),
              ],
            ),

            //=============Body========================
            floatingActionButton: FloatingActionButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AddData(email: widget.user.email,)),);},
              elevation: 0,
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.add,color: Colors.amber, size: 35,),
            ),

            //=============Body========================
            body: _contenerData()
          ),
        );
      }


      //======= _simpleDialog ===========================
      void _simpleDialog() async {
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

                return Dismissible(
                  key: new Key(dataSnapshot.documents[postions].documentID) ,
                  onDismissed: (direction){
                    Firestore.instance.runTransaction((transaction) async{
                      DocumentSnapshot snapshot =
                          await transaction.get(dataSnapshot.documents[postions].reference);
                          await transaction.delete(snapshot.reference);
                    });
                  },
                  child: ListTile(
                    title: Text(title,style: TextStyle(color: Colors.purple),),
                    subtitle: Text(date),
                    trailing: IconButton(icon: Icon(Icons.edit,color: Colors.blue),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(
                            builder: (context) => EditData(
                              title: title ,
                              note: note,
                              duedate: dataSnapshot.documents[postions].data["Data"],
                              index: dataSnapshot.documents[postions].reference,
                            )),);}),
                    
                    leading: IconButton(icon: Icon(Icons.delete_sweep,color: Colors.red,), onPressed: (){
                      Firestore.instance.runTransaction((transaction) async{
                        DocumentSnapshot snapshot  =
                        await transaction.get(dataSnapshot.documents[postions].reference);
                        await transaction.delete(snapshot.reference);
                      });
                    }),
                  ),
                );
              }
          );
        }else{ return Center(child: SpinKitCircle(color: Colors.purple.shade500, size: 100,)); }
      }
    }

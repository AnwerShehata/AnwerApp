    import 'package:firebase_database/firebase_database.dart';

    class Student{
    String  _id  , _name  , _age  , _city , _department  , _description ;

    //-- constructor -----
    Student(
    this._id,
    this._name,
    this._age,
    this._city,
    this._department,
    this._description
    );

    Student.map(dynamic obj ){
    this._id = obj['id'];
    this._name = obj['name'];
    this._age = obj['age'];
    this._city = obj['city'];
    this._department = obj['department'];
    this._description = obj['description'];
    }

    //-- جلب البيانات من المستخدم عن طريق get
    String get id => _id;
    String get name => _name;
    String get age => _age;
    String get city => _city;
    String get department => _department;
    String get description => _description;


    //-- جلب البيانات من الفايربيس
    Student.fromSnapShot( DataSnapshot  snapshot){
    _id = snapshot.key;
    _name = snapshot.value['name'];
    _age = snapshot.value['age'];
    _city = snapshot.value['city'];
    _department = snapshot.value['department'];
    _description = snapshot.value['description'];
    }


    }




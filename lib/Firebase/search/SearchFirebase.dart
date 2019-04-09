import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

SearchBar searchBar;
GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class SearchFirebase extends StatefulWidget {
  @override
  _SearchFirebaseState createState() => new _SearchFirebaseState();
}

AppBar _buildAppBar(BuildContext context) {
  return new AppBar(
    title: new Text("FIREBASE QUERY"),
    centerTitle: true,
    elevation: 0,
    actions: <Widget>[
      searchBar.getSearchAction(context),
    ],
  );
}
class _SearchFirebaseState extends State<SearchFirebase> {
  String _queryText;

  _SearchFirebaseState() {
    searchBar = new SearchBar(
      onSubmitted: onSubmitted,
      inBar: true,
      buildDefaultAppBar: _buildAppBar,
      setState: setState,
    );
  }

  void onSubmitted(String value) {
    setState(() {
      _queryText = value;
      _scaffoldKey.currentState.showSnackBar(new SnackBar(
        content: new Text('You have Searched something!'),
        backgroundColor: Colors.amber,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: searchBar.build(context),
      backgroundColor: Colors.white,
      body: _fireSearch(_queryText),
    );
  }
}

Widget _fireSearch(String queryText) {
  return new StreamBuilder(
    stream: Firestore.instance
        .collection('testcrud')
        .where('carName', isEqualTo: queryText)
        .snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) return new Text('Loading...');
      return new ListView.builder(
        itemCount: snapshot.data.documents.length,
        itemBuilder: (context, index) =>
            _buildListItem(snapshot.data.documents[index]),
      );
    },
  );
}

Widget _buildListItem(DocumentSnapshot document) {
  return new ListTile(
    title: Text(document['carName']),
    subtitle: Text(document['color']),
  );
}

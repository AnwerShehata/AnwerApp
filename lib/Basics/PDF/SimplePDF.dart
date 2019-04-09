import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';
import 'package:anwerapp/Basics/PDF/PDFScreen.dart';


class SimplePDF extends StatefulWidget {
  @override
  _SimplePDFState createState() => new _SimplePDFState();
}

class _SimplePDFState extends State<SimplePDF> {
  String pathPDF = "";
  String urlPDF = "http://africau.edu/images/default/sample.pdf";


  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    final url = urlPDF;
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('Plugin example app')),

      body: Center(
        child: RaisedButton(
          child: Text("Open PDF"),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PDFScreen(pathPDF)),
          ),
        ),
      ),

    );
  }
}


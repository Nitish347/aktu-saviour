import 'dart:io';

import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
// import 'package:pdf_flutter/pdf_flutter.dart';
void main() {
  runApp(PDF());
}

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  @override
  void initState() {
    // TODO: implement initState

    loadFirebase("python-practice-book.pdf");

  }

  bool _loading = true;
  PDFDocument? document;
  var byt;


  // loadpdf(String path) async {
  //   final data = await rootBundle.load(path);
  //   byt = data.buffer.asUint8List();
  //   setState(() {
  //     _loading = false;
  //   });
  // }
  loadFirebase(String url) async {

      final refPDF = FirebaseStorage.instance.ref().child(url);
      print("bbx");
      byt = await refPDF.getData();
      print("jhgfx");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: _loading
                ? CircularProgressIndicator()
                : PDFView(
                    pdfData: byt,
                    pageSnap: false,
                  )),
      ),
    );
  }
}

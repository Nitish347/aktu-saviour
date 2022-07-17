// import 'dart:async';
// import 'dart:io';
// // import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
// import 'package:aktu/pdf.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// // import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
//
// class PDFViewerPage extends StatefulWidget {
//
//
//
//
//
//   @override
//   _PDFViewerPageState createState() => _PDFViewerPageState();
// }
//
// class _PDFViewerPageState extends State<PDFViewerPage> {
//   // late PDFViewController controller;
//   int pages = 0;
//   int indexPage = 0;
//
// // late PDFDocument file ;
// //  late final File file1;
// // @override
//   void initState() {
//     // TODO: implement initState
//     PDFApi.loadFirebase("python-practice-book.pdf");
//     print("ghfds");
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("pdf"),
//       ),
//       body:PDFView(
//         // filePath: "asset/images/Nitish Chaurasiya's Resume-hackerresume.pdf",
//         // autoSpacing: false,
//         pdfData: PDFApi.fill,
//         // swipeHorizontal: true,
//         // pageSnap: false,
//         // pageFling: false,
//         onRender: (pages) => setState(() => this.pages = pages!),
//
//         onPageChanged: (indexPage, _) =>
//             setState(() => this.indexPage = indexPage!),
//       ),
//     );
//   }
// }
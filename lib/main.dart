

// import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:aktu/auth/login.dart';
import 'package:aktu/auth/verify.dart';
import 'package:aktu/branchselect/branch.dart';
import 'package:aktu/homepage/home.dart';
import 'package:aktu/Subject-list/Subject-List.dart';
import 'package:aktu/new.dart';
import 'package:aktu/pdf-viewer.dart';
import 'package:aktu/pdf.dart';
import 'package:aktu/yearselect/year.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // PDFApi.loadFirebase("python-practice-book.pdf");
  runApp( MyApp());
}


class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String? finalStatus;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Year(),
      routes: {
          LoginPage.id :(context)=>LoginPage(),
          VerifyPage.id : (context)=>VerifyPage(),
        Year.id : (context) => Year(),
        Branch.id : (context) => Branch(),
        HomePage.id : (context) => HomePage(),
        SubjectList.id : (context) =>SubjectList(),

      },
    );
  }
 
}

import 'package:aktu/constants/constants.dart';
import 'package:flutter/material.dart';
class NotesScreen extends StatelessWidget {
 String subject="";
 NotesScreen({required this.subject});

  @override
  Widget build(BuildContext context) {
    var heigth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.amber,
      height: heigth,
      width: width,
      child: Center(child: Text(subject),),
    );
  }
}

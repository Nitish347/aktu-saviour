import 'package:aktu/Others/Others.dart';
import 'package:aktu/Practice/Practice.dart';
import 'package:aktu/Previous-Papers/PrePapers-Screen.dart';
import 'package:aktu/Quantum/Quantum.dart';
import 'package:aktu/Video-Lectures/Video-Lectures.dart';
import 'package:aktu/notes/notesScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class SubjectListTile extends StatelessWidget {
  String subjects = "";
  String subCodes = "";
  List<Color> color1;
  int gridnum ;
  // MaterialAccentColor color2 ;
  SubjectListTile(
      {required this.subjects,
      required this.subCodes,
        required this.color1,
        required this.gridnum,
      });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: InkWell(
        onTap: (){
          if(gridnum == 0)  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>NotesScreen(subject: subCodes)));
          if(gridnum == 1)  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>PapersScreen()));
          if(gridnum == 2)  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>QuantumScreen()));
          if(gridnum == 3)  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>VideoLecture()));
          if(gridnum == 4)  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>PracticeScreen()));
          if(gridnum == 5)  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>OtherScreen()));
        },
        child: Container(
          height: height / 13,
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: color1),

              // image: DecorationImage(image: AssetImage(widget.img,),fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(50),
              boxShadow: Constants.neumorphic1),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "${subjects} (${subCodes})",
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: GoogleFonts.actor(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  fontWeight: FontWeight.w700),
            )
          ]),
        ),
      ),
    );
  }
}


// Color.fromRGBO(77, 73, 108, 1),
// Color.fromRGBO(227, 191, 253, .6),
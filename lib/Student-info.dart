import 'package:aktu/branchselect/branch.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';
class StudentInfo extends StatelessWidget {
 static  String branch ="";
 static  String year ="";


  @override
  Widget build(BuildContext context) {
   var height = MediaQuery.of(context).size.height;
   var width = MediaQuery.of(context).size.width;
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [

      Padding(
       padding: EdgeInsets.only(left: 20),
       child: Row(
        children: [
         Text(
          "B.Tech",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  shadows: Constants.neumorphic1,
                  fontSize: height / 18,
                  fontWeight: FontWeight.bold)),
         ),
         Padding(
          padding: EdgeInsets.only(left: 10),
           child: Text(
            " (${Branch.selectedBranch})",
            style: GoogleFonts.actor(
                textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    shadows: Constants.neumorphic1)),
           ),
         ),
        ],
       ),
      ),
      Padding(
       padding: const EdgeInsets.only( left: 20),
       child: Text("$branch",
           style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                shadows: Constants.neumorphic1,
                fontSize: height / 35,
                fontWeight: FontWeight.w500),
           )),
      ),
     ],
    );
  }
}

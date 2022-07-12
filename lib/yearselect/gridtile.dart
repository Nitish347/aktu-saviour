import 'package:aktu/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class grid extends StatelessWidget {

  grid({this.selected,this.onTap,this.year,this.name});
  final String? name;
  final String? year;
  final VoidCallback? onTap;
  final bool? selected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 10,
        width: 5,
        decoration: BoxDecoration(
            boxShadow: Constants.neumorphic1,
            borderRadius: BorderRadius.circular(20),
            gradient: selected ?? false ? Constants.purplegradient : Constants
                .purplegradient1
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              year!,
              style: GoogleFonts.poppins(
                fontSize: 28, fontWeight: FontWeight.w500,color: selected ?? false ? Colors.white : Colors.black),
            ),
            Text(name!, style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: "cursive",color: selected ?? false ? Colors.white : Colors.black),),

          ],
        ),
      ),
    );
  }
}
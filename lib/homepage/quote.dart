import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class Quote extends StatefulWidget {
   String text="";
   String img ="";
    double? size ;
  Quote({required this.img,required this.text, this.size});

  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 7,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(widget.img,),fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(20),
          boxShadow: Constants.neumorphic1),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          widget.text,
          style: GoogleFonts.gowunBatang(
              textStyle: TextStyle(fontSize: widget.size!, color: Colors.white),
              fontWeight: FontWeight.w700),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class Quote extends StatefulWidget {
  const Quote({Key? key}) : super(key: key);

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
        image: DecorationImage(image: AssetImage("asset/images/2.png",),fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              colors: [Colors.pinkAccent.withOpacity(0.6), Colors.pink]),
          boxShadow: Constants.neumorphic1),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "This is for daily quotes!",
          style: GoogleFonts.gowunBatang(
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
              fontWeight: FontWeight.w700),
        )
      ]),
    );
  }
}

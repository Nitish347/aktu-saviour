import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
class OptionTile extends StatelessWidget {
  OptionTile({this.selected,this.onTap,this.color,this.option,this.images});
  final String? option;
  final MaterialAccentColor? color;
  final VoidCallback? onTap;
  final bool? selected;
  final String? images;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 10,
        width: 5,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images!),fit: BoxFit.fill),
            boxShadow: Constants.neumorphic1,
            borderRadius: BorderRadius.circular(20),
            color: color
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              option!,
              style: GoogleFonts.poppins(
                fontSize: 15, fontWeight: FontWeight.w500,color: Colors.white),
            ),
            // Text(name!, style: TextStyle(fontSize: 25,
            //   fontWeight: FontWeight.w500,
            //   fontFamily: "cursive",),),

          ],
        ),
      ),
    );
  }
}

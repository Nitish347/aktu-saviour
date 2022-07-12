import 'package:aktu/Subject-list/Subject-List.dart';
import 'package:aktu/homepage/quote.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
class OptionTile extends StatelessWidget {
  OptionTile({this.option,this.images,required this.color,this.selectedText});
  final String? option;
   final List<Color> color;
 final String? selectedText;
  final String? images;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){


        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SubjectList(
          img: images,
          text: selectedText,
           color12: color,
        )));

      },
      child: Container(
        height: 10,
        width: 5,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images!),fit: BoxFit.fill),
            boxShadow: Constants.neumorphic1,
            borderRadius: BorderRadius.circular(20),

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

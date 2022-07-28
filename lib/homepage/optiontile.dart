import 'package:aktu/Subject-list/Subject-List.dart';
import 'package:aktu/homepage/quote.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
class OptionTile extends StatelessWidget {
  OptionTile({this.option,this.images,required this.color,this.selectedText,required this.gridnum});
  final String? option;
   final List<Color> color;
 final String? selectedText;
  final String? images;
 int gridnum;
 // Map<String, dynamic> list ={ "aa" : [
 //   {
 //     "subjects": "Engineering Chemistry",
 //     "subjectcodes": "KAS102T",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "urkasl",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "Engineering Mathematics-1",
 //     "subjectcodes": "KAS103T",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "ukas103rl",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "Basic Electrical Engineering",
 //     "subjectcodes": "KEE101T",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "url",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "Programming For Problem Solving",
 //     "subjectcodes": "KCS101T",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "url",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "Emerging Technology",
 //     "subjectcodes": "KMC102",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "url",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "Engineering Physics",
 //     "subjectcodes": "KAS201T",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "url",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "Engineering Mathematics-2",
 //     "subjectcodes": "KAS203T",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "url",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "Emerging Domain in Electronics Engineering",
 //     "subjectcodes": "KEC201T",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "url",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "Fundamentals of Mechanical Engineering & Mechatronics",
 //     "subjectcodes": "KME201T",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "url",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 //   {
 //     "subjects": "AI For Engineering",
 //     "subjectcodes": "KMC201",
 //     "notes": ["url1", "url2"],
 //     "papers": ["url1", "url2"],
 //     "quantum": "url",
 //     "video letures": "url",
 //     "practice": ["url1", "url2", "url3"]
 //
 //   },
 // ]};

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // print(Constants.result["aa"][0]["quantum"]);
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SubjectList(
          img: images!,
          text: selectedText!,
           color12: color,
          gridnum: gridnum,

        )));

      },
      child: Container(
        margin: EdgeInsets.all(20),
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

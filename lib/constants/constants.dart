import 'dart:ui';
import 'package:flutter/material.dart';

class Constants {
  static final neumorphic1 = [
    BoxShadow(
      color: Colors.white.withOpacity(0.5),
      blurRadius: 16.0,
    ),
    BoxShadow(
        color: Colors.black.withOpacity(0.4),
        offset: Offset(6.0, 6.0),
        blurRadius: 16.0)
  ];
  static final neumorphic2 = [
    BoxShadow(
      color: Colors.deepPurple.withOpacity(0.9),
      blurRadius: 16.0,
    ),
    BoxShadow(
        color: Colors.deepPurpleAccent.withOpacity(0.6),
        offset: Offset(6.0, 6.0),
        blurRadius: 40.0)
  ];
  static final purplegradient = LinearGradient(colors: [
    Color.fromRGBO(143, 148, 251, 1),
    Color.fromRGBO(143, 148, 251, .6),
  ]);
  static final purplegradient1 =
      LinearGradient(colors: [Colors.white, Colors.white]);

  static final List<String> subjects = [
    "Engineering Chemistry",
    "Engineering Mathematics-1",
    "Basic Electrical Engineering",
    "Programming For Problem Solving",
    "Emerging Technology",
    "Engineering Physics",
    "Engineering Mathematics-2",
    "Emerging Domain in Electronics Engineering",
    "Fundamentals of Mechanical Engineering & Mechatronics",
    "AI For Engineering"
  ];
  static final List<String> subjectcodes = [
    "KAS102T",
    "KAS103T",
    "KEE101T",
    "KCS101T",
    "KMC102",
    "KAS201T",
    "KAS203T",
    "KEC201T",
    "KME201T",
    "KMC201"
  ];

  // final  height = MediaQuery.of(context).size.height;
  // var width = MediaQuery.of(context).size.width;
  static final List<Color> color1 = [
    Color.fromRGBO(77, 73, 108, 1),
    Color.fromRGBO(34, 70, 96, 1),
    Color.fromRGBO(14, 39, 84, 1),
    Color.fromRGBO(51, 51, 77, 1),
    Color.fromRGBO(15, 45, 56, 1),
    Color.fromRGBO(97, 67, 123, 1),
  ];
  static final  List<Color> color2 = [
    Color.fromRGBO(227, 191, 253, .6),
    Color.fromRGBO(51, 142, 173, .6),
    Color.fromRGBO(104, 140, 192, .6),
    Color.fromRGBO(115, 102, 112, .6),
    Color.fromRGBO(32, 75, 94, .6),
    Color.fromRGBO(229, 149, 87, .6),
  ];
  static final List<List<Color>> color =[
    [Color.fromRGBO(77, 73, 108, 1),Color.fromRGBO(227, 191, 253, .6),],
    [Color.fromRGBO(34, 70, 96, 1),Color.fromRGBO(51, 142, 173, .6),],
    [Color.fromRGBO(14, 39, 84, 1),Color.fromRGBO(104, 140, 192, .6),],
    [Color.fromRGBO(51, 51, 77, 1),Color.fromRGBO(115, 102, 112, .6),],
    [ Color.fromRGBO(15, 45, 56, 1),Color.fromRGBO(32, 75, 94, .6),],
    [Color.fromRGBO(97, 67, 123, 1),Color.fromRGBO(229, 149, 87, .6),],
  ];
  static final    List<String> options = [
    "Notes",
    "Previous Year Pappers",
    "Quantum",
    "Video Lecrtures",
    "Practice",
    "Others"
  ];

  static  Map<String, dynamic> result = {
    "year": "2nd",
    "branch": "CS",

    "material": [
      {
        "subjects": "Maths IV",
        "subjectcodes": "KAS302",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PL0c0N7xv8s05PwRatWCCTiDS3_7V_9O8a",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Technical Technical-1",
        "subjectcodes": "KAS301",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PLaGBxvvw_eMUmtfG0Rh91ihVXTJDYB3Xq",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Universal Human values",
        "subjectcodes": "KVE 301",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PL-xDzBkCcVN-RqidPb46a-_uTKVwMo6NP",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Data Structure",
        "subjectcodes": "KCS301",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PLdo5W4Nhv31bbKJzrsKfMpo_grxuLl8LU",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Computer Organization and Architecture ",
        "subjectcodes": "KCS302",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PLxCzCOWd7aiHMonh3G6QNKq53C6oNXGrX",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Discrete Structures & Theory of Logic",
        "subjectcodes": "KCS303",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PLTgUjV30iKbOV1wJOpFZATFGAEvcVhHPC",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Computer System Security",
        "subjectcodes": "KNC301",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PL2heMq5vo28pMf_Ha2jSht18vQOrUYfof",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Python Programming",
        "subjectcodes": "KNC302",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PL-JvKqQx2Atdcl4oTcRRR_ysMVwiCgdrK",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Operating Systems",
        "subjectcodes": "KCS401",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PL_obO5Qb5QTE9s7QCNjqk97Q4UUgOseWP",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Theory of Automata and Formal Languages ",
        "subjectcodes": "KCS402",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PL_obO5Qb5QTEihQ35PgzjZSh7PveVt-iF",
        "practice": ["url1", "url2", "url3"]

      },
      {
        "subjects": "Microprocessor",
        "subjectcodes": "KCS403",
        "notes": ["url1", "url2"],
        "papers": ["url1", "url2"],
        "quantum": "url",
        "video letures": "https://youtube.com/playlist?list=PLrjkTql3jnm8HbdMwBYIMAd3UdstWChFH",
        "practice": ["url1", "url2", "url3"]

      },

    ],


  };

}


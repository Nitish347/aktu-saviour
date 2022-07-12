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
}

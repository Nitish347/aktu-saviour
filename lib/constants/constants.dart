
import 'dart:ui';
import 'package:flutter/material.dart';

class Constants {
 static final neumorphic1 = [
   BoxShadow(
     color: Colors.white.withOpacity(0.5),
     blurRadius: 16.0,
   ) ,
   BoxShadow(
       color: Colors.black.withOpacity(0.4),
       offset: Offset(6.0,6.0),
       blurRadius: 16.0
   )];
 static final purplegradient = LinearGradient(colors: [
 Color.fromRGBO(143, 148, 251, 1),
 Color.fromRGBO(143, 148, 251, .6),

 ]);static final purplegradient1 = LinearGradient(colors: [
Colors.white,
   Colors.white

 ]);

  }
import 'package:aktu/homepage/optiontile.dart';
import 'package:aktu/homepage/quote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../branch.dart';
import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  static String id = "";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int optionSelected = 0;
  void checkOption(int index) {
    setState(() {
      optionSelected = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> branch = [
      "Notes",
      "Previous Year \n       Pappers",
      "Quantum",
      "Video Lecrtures",
      "Practice",
      "Others"
    ];

    List<String> images = ["asset/images/bb1.jpeg","asset/images/bb5.jpeg","asset/images/bb8.jpeg","asset/images/bb4.jpeg","asset/images/b3.jpeg","asset/images/b4.jpeg",];
    List<MaterialAccentColor> colorss =[Colors.deepPurpleAccent,Colors.deepPurpleAccent,Colors.purpleAccent,Colors.deepOrangeAccent,Colors.greenAccent,Colors.lightGreenAccent];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 20, top: height / 25),
                child: Icon(
                  CupertinoIcons.bars,
                  size: 35,
                )),
            Padding(
              padding: EdgeInsets.only(top: height / 100, left: 20),
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
                  Text(
                    " (2nd Year)",
                    style: GoogleFonts.gowunBatang(
                        textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            shadows: Constants.neumorphic1)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text("Select Branch",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        shadows: Constants.neumorphic1,
                        fontSize: height / 35,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            // SizedBox(
            //   height: height / 80,
            // ),
            Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 5),
            child:Quote()),
            Container(
              margin: EdgeInsets.all(20),

              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 40,
                  shrinkWrap: true,
                  // padding: EdgeInsets.all(20),

                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  children: [
                    for (int i = 0; i < 6; i++)
                      OptionTile(
                        images: images[i],
                        option: branch[i],
                        color: colorss[i],
                        onTap: () => checkOption(i + 1),
                        selected: i + 1 == optionSelected,
                      )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

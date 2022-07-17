import 'package:aktu/Student-info.dart';
import 'package:aktu/homepage/optiontile.dart';
import 'package:aktu/homepage/quote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  static String id = "";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

    List<String> images = [
      "asset/images/bb1.jpeg",
      "asset/images/bb5.jpeg",
      "asset/images/bb8.jpeg",
      "asset/images/bb4.jpeg",
      "asset/images/b3.jpeg",
      "asset/images/b4.jpeg",
    ];
    List<Color> color1 = [
      Color.fromRGBO(77, 73, 108, 1),
      Color.fromRGBO(34, 70, 96, 1),
      Color.fromRGBO(14, 39, 84, 1),
      Color.fromRGBO(51, 51, 77, 1),
      Color.fromRGBO(15, 45, 56, 1),
      Color.fromRGBO(97, 67, 123, 1),
    ];

    List<Color> color2 = [
      Color.fromRGBO(227, 191, 253, .6),
      Color.fromRGBO(51, 142, 173, .6),
      Color.fromRGBO(104, 140, 192, .6),
      Color.fromRGBO(115, 102, 112, .6),
      Color.fromRGBO(32, 75, 94, .6),
      Color.fromRGBO(229, 149, 87, .6),
    ];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, top: height /40),
                  child: Icon(
                    CupertinoIcons.bars,
                    size: 35,
                  )),
              StudentInfo(),
              // SizedBox(
              //   height: height / 80,
              // ),
              Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
                  child: Quote(
                    size: 20,
                    img: "asset/images/2.png",
                    text: "this is for daily quotes!!",
                  )),

              Container(
                height: height/1.7,

                // margin: EdgeInsets.all(20),
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    // padding: EdgeInsets.all(20),

                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    children: [
                      for (int i = 0; i < 6; i++)
                        OptionTile(
                          images: images[i],
                          option: branch[i],
                          color: Constants.color[i],
                          selectedText: Constants.options[i],gridnum: i,


                        )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

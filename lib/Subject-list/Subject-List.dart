import 'package:aktu/Student-info.dart';
import 'package:aktu/Subject-list/Subject-List-Tile.dart';
import 'package:aktu/constants/constants.dart';
import 'package:aktu/homepage/quote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubjectList extends StatelessWidget {
  static String id = "";
  String? img = "";
  String? text = "";
  final List<Color>? color12;
  int? gridnum;
  SubjectList({this.text, this.img, this.color12, this.gridnum});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 10, top: height / 70),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    CupertinoIcons.back,
                    size: 35,
                  ),
                )),
            StudentInfo(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Quote(
                size: 25,
                img: img!,
                text: text!,
              ),
            ),
            Container(
              height: height / 1.77,
              child: ListView(
                children: List.generate(Constants.subjects.length, (index) {
                  return SubjectListTile(
                    subCodes: Constants.subjectcodes[index],
                    subjects: Constants.subjects[index],
                    color1: color12!,
                    gridnum:gridnum! ,
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

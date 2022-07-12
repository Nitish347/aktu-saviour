import 'package:aktu/constants/gridtile.dart';
import 'package:aktu/homepage/home.dart';
import 'package:aktu/year.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/constants.dart';

class Branch extends StatefulWidget {
  static String id = "branch";
  static String? selectedBranch;

  @override
  State<Branch> createState() => _BranchState();
}

class _BranchState extends State<Branch> {
  int optionSelected = 0;
  void checkOption(int index) {
    setState(() {
      optionSelected = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> branch = ["CS/IT", "ECE", "EN", "Mechanical", "Civil"];
    List<String> images = [
      "asset/images/cs.jpg",
      "asset/images/ece.jpg",
      "asset/images/en.jpg",
      "asset/images/mech.jpg",
      "asset/images/civil.jpg"
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: height /15, left: 20),
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
                    "  (${Branch.selectedBranch})",
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
            SizedBox(
              height: height /100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                // height: height/1.85,
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 40,
                    shrinkWrap: true,
                    // padding: EdgeInsets.all(20),

                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    children: [
                      for (int i = 0; i < 5; i++)
                        gridTileBranch(
                          branch: branch[i],
                          images: images[i],
                          onTap: () => checkOption(i + 1),
                          selected: i + 1 == optionSelected,
                        )
                    ]),
              ),
            ),
            Center(
              child: InkWell(
                onTap: ()=>Navigator.pushNamed(context, HomePage.id),
                child: Container(
                  height: height / 12,
                  width: width / 6,
                  decoration: BoxDecoration(
                      boxShadow: Constants.neumorphic1,
                      borderRadius: BorderRadius.circular(50),
                      // gradient: Constants.purplegradient
                      color: Colors.white),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 30,
            )
          ],
        ),
      ),
    );
  }
}

class gridTileBranch extends StatelessWidget {
  gridTileBranch({this.selected, this.onTap, this.branch, this.images});
  final String? branch;
  final String? images;
  final VoidCallback? onTap;
  final bool? selected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              boxShadow: selected ?? false ? Constants.neumorphic2 : Constants.neumorphic1,
              borderRadius: BorderRadius.circular(20),
              gradient: Constants.purplegradient1),
          child: Stack(
            children: [
              Center(
                child: Container(
                    height: 110, width: 110, child: Image.asset(images!)),
              ),
              Positioned(
                left: 10,
                top: 5,
                child: Text(
                  branch!,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

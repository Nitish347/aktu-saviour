import 'package:aktu/branchselect/branch.dart';
import 'package:aktu/constants/constants.dart';
import 'package:aktu/yearselect/gridtile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Year extends StatefulWidget {
  static String id = " year";


  @override
  State<Year> createState() => _YearState();
}

class _YearState extends State<Year> {
  static String selectedYear =  "";
int optionSelected = 0;
  List<String> year = ["1st Year", "2nd Year", "3rd Year", "4th Year"];
  List<String> name = ["Fresher", "Explorer", "Fighter", "Legend"];
void checkOption(int index){
  setState(() {
    optionSelected = index;
    Branch.selectedBranch = year[index-1];
    print(index);
  });
}
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
              padding: EdgeInsets.only(top: height / 26, left: 20),
              child: Text(
                "B.Tech",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      shadows: Constants.neumorphic1,
                        fontSize: height / 18, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text("Select Year",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      shadows: Constants.neumorphic1,
                        fontSize: height / 35, fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: height /100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(

                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 40,
                  shrinkWrap: true,

                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  children:[
                    for(int i=0;i<4;i++)
                   grid(
                     name: name[i],
                     year: year[i],
                     onTap: ()=> checkOption(i+1),
                     selected: i+1 == optionSelected,

                   )
                  ]
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(child :
    InkWell(
        onTap: () async{
        Navigator.pushNamed(context, Branch.id);
        // final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        // sharedPreferences.setString("loginStatus", "jojojo");
        print("ho gyaaa");},
        child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  boxShadow: Constants.neumorphic1,
                  borderRadius: BorderRadius.circular(50),
                 // gradient: Constants.purplegradient
                  color: Colors.white
                  ),
                child: Icon(Icons.arrow_forward_ios,size: 25,color: Colors.black,),
                ),
    ),
            ),

          ],
        ),
      ),
    );
  }
}





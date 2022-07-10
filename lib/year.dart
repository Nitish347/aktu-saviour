import 'package:aktu/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Year extends StatefulWidget {
  static String id = " year";

  @override
  State<Year> createState() => _YearState();
}

class _YearState extends State<Year> {
int optionSelected = 0;
void checkOption(int index){
  setState(() {
    optionSelected = index;
    print(index);
  });
}
  @override
  Widget build(BuildContext context) {
    List<String> year = ["1st Year", "2nd Year", "3rd Year", "4th Year"];
    List<String> name = ["Fresher", "Explorer", "Fighter", "Legend"];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: height / 10, left: 20),
            child: Text(
              "B.Tech",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    shadows: Constants.neumorphic1,
                      fontSize: height / 14, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text("Select Year",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    shadows: Constants.neumorphic1,
                      fontSize: height / 25, fontWeight: FontWeight.w500),
                )),
          ),
          SizedBox(
            height: height / 30,
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
                 GridTile(
                   name: name[i],
                   year: year[i],
                   onTap: ()=> checkOption(i+1),
                   selected: i+1 == optionSelected,

                 )
                ]
              ),
            ),
          ),
          Center(child :Container(
            height: height/12,
            width: width/6,
            decoration: BoxDecoration(
              boxShadow: Constants.neumorphic1,
              borderRadius: BorderRadius.circular(50),
             // gradient: Constants.purplegradient
              color: Colors.white
              ),
            child: Icon(Icons.arrow_forward_ios,size: 25,color: Colors.black,),
            ),
          ),

        ],
      ),
    );
  }
}

// class YearBox extends StatefulWidget {
//   String year = "";
//   String name = "";
//
//
//   int index1;
//
//   YearBox({required this.index1,required this.name, required this.year,required this.onTap});
//
//
//   @override
//   State<YearBox> createState() => _YearBoxState();
// }

// class _YearBoxState extends State<YearBox> {
//   late int optionSelected = 0;
//   bool selected = false;
//
//   void checkOption(int index) {
//     setState(() {
//       optionSelected = index;
//     });
//     if (index == optionSelected)
//       setState(() {
//         selected = true;
//       });
//   }
// final VoidCallback onTap;
//   @override
//   Widget build(BuildContext context) {
//     var color = Colors.black;
//     var color1 = Colors.white;
//     return InkWell(
//       onTap: () => checkOption(widget.index1),
//       child: Container(
//         height: 10,
//         width: 5,
//         decoration: BoxDecoration(
//             boxShadow: Constants.neumorphic1,
//             borderRadius: BorderRadius.circular(20),
//             gradient: selected ? Constants.purplegradient : Constants
//                 .purplegradient1
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               widget.year,
//               style: GoogleFonts.poppins(
//                   fontSize: 28, fontWeight: FontWeight.w500, color: color),
//             ),
//             Text(widget.name, style: TextStyle(fontSize: 25,
//               fontWeight: FontWeight.w500,
//               fontFamily: "cursive",),),
//
//           ],
//         ),
//       ),
//     );
//   }
// }


class GridTile extends StatelessWidget {

GridTile({this.selected,this.onTap,this.year,this.name});
  final String? name;
  final String? year;
  final VoidCallback? onTap;
  final bool? selected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 10,
        width: 5,
        decoration: BoxDecoration(
            boxShadow: Constants.neumorphic1,
            borderRadius: BorderRadius.circular(20),
            gradient: selected ?? false ? Constants.purplegradient : Constants
                .purplegradient1
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              year!,
              style: GoogleFonts.poppins(
                  fontSize: 28, fontWeight: FontWeight.w500,),
            ),
            Text(name!, style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: "cursive",),),

          ],
        ),
      ),
    );
  }
}

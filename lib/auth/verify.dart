import 'dart:ui';
import 'package:aktu/auth/login.dart';
import 'package:flutter/material.dart';
class VerifyPage extends StatefulWidget {

  static String id ="verifyPage";

  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/bacc.jpg"),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.50, sigmaY: 1.50),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Center(
            child:  SingleChildScrollView(
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height/10,
                      ),
                      Text("Verify with OTP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.white),),
                     Divider(
                       height: 10,
                     ),
                      Text("Sent to +91 ${LoginPage.phoneNumber}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),),
                      SizedBox(
                        height: height/10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.withOpacity(0.6)
                          ),
                          child:  Padding(
                            padding: EdgeInsets.only(right: 15,bottom:2),
                            child: TextField(
                              maxLength: 6,
                              textAlign: TextAlign.center,
                              onChanged: (value){
                                // phoneNumber = value;
                              },
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              onEditingComplete: (){
                                // if(phoneNumber.toString().length>10)
                                //   print("noooo");
                              },


                              decoration: InputDecoration(


                                  border: InputBorder.none,
                                  hintText: "Enter OTP",

                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: height/25,),
                      InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: EdgeInsets.all(25.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ])),
                            child: Center(
                              child: Text(
                                "Verify",
                                style: TextStyle(
                                  // fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
            ),
              ),

        ],
      ),
    );
  }
}

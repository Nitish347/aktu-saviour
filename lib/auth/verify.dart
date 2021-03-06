
import 'dart:ui';
import 'package:aktu/auth/login.dart';
import 'package:aktu/yearselect/year.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:shared_preferences/shared_preferences.dart';
class VerifyPage extends StatefulWidget {

  static String id ="verifyPage";



  @override
  _VerifyPageState createState() => _VerifyPageState();
}
 String otp="";
FirebaseAuth auth = FirebaseAuth.instance;

String verficationID_received = "";

bool next = false;

bool otp_visible = false;

class _VerifyPageState extends State<VerifyPage> {
  @override
  void initState() {
    // TODO: implement initState

    verify();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/bacc.jpeg"),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.50, sigmaY: 1.50),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height / 10,
                  ),
                  Text("Verify with OTP", style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),),
                  Divider(
                    height: 10,
                  ),
                  Text("Sent to +91 ${LoginPage.phoneNumber}", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),),
                  SizedBox(
                    height: height / 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.withOpacity(0.6)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 15, bottom: 2),
                        child: TextField(
                          maxLength: 6,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            otp = value;
                          },
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,


                          decoration: InputDecoration(
                              counterText: "",


                              border: InputBorder.none,
                              hintText: "Enter OTP",

                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: height/25,),
                  InkWell(
                    onTap: () {
                      print(otp);
                      print(LoginPage.phoneNumber);
                      if (otp_visible == true) {
                        verifycode();
                      }
                    },
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

  void verify() {
    auth.verifyPhoneNumber(
        phoneNumber: "+91${LoginPage.phoneNumber.toString()}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {
            print("login successfully");
          });
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message);
        },
        codeSent: (String verficationID, int? resendtoken) {
          verficationID_received = verficationID;
          setState(() {
            otp_visible = true;

          });
        },
        codeAutoRetrievalTimeout: (String verficationID) {});
  }

  void verifycode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verficationID_received, smsCode: otp.toString());
    await auth.signInWithCredential(credential).then((value) {
      print("logged in successfully");
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) =>
              Year()));


    });

  }
}

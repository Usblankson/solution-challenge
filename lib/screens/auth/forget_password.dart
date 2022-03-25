import 'dart:io';

import 'package:flutter/material.dart';
import 'package:solution_challenge/constants/color_constants.dart';
import 'package:solution_challenge/screens/auth/sign_up_screen.dart';

import '../../constants/font_constant.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  bool _obscureText = true;

  String _password = "";

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/auth_top_bg.png',
                    fit: BoxFit.fill,
                    width: width,
                    height: height / 2.5,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 50, 0, 50),
                              child: Center(
                                child: Text(
                                "Forgot\nPassword?",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: kWhiteColor,
                                  fontFamily: kUbuntu,
                                ),
                              ),
                              ),
                              
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextFormField(
                cursorColor: kBlueColor,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: kBlueColor,
                  ),
                  hintText: "Enter Email",
                  suffixIcon: Icon(
                    Icons.task_alt_rounded,
                    color: kBlueColor,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Write Click Listener Code Here.
                
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBlueColor,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Text(
                  "SEND",
                 style: TextStyle(
                    color: Colors.white, 
                    fontFamily: kQuicksand,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


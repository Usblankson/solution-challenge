import 'dart:io';

import 'package:flutter/material.dart';
import 'package:solution_challenge/constants/color_constants.dart';
import 'package:solution_challenge/screens/auth/sign_up_screen.dart';

import '../../constants/font_constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                                "Welcome\nBack",
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
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextFormField(
                cursorColor: kBlueColor,
                decoration: InputDecoration(
                  focusColor: kBlueColor,
                  icon: Icon(
                    Icons.vpn_key,
                    color: kBlueColor,
                  ),
                  hintText: "Enter Password",
                  suffixIcon: TextButton(
                    onPressed: _toggle,
                    child: _obscureText
                        ? Icon(
                          Icons.visibility_rounded, 
                          color: kBlueColor)
                        : Icon(
                            Icons.visibility_off_rounded,
                            color: kBlueColor,
                          ),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                validator: (val) =>
                    val!.length < 8 ? 'Password too short.' : null,
                onSaved: (val) => _password = val!,
                obscureText: _obscureText,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Write Click Listener Code Here
                },
                child: Text("Forget Password?"),
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
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Any Account?  "),
                  GestureDetector(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: kBlueColor),
                    ),
                    onTap: () {
                      //Route to sign up UI
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        )
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // return initWidget();
}

//   initWidget() {
//      bool _obscureText = true;

//   String _password = "";
 
//   // Toggles the password show status
//   void _toggle() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }
//      double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         body: SingleChildScrollView(
//             child: Column(
//       children: [
//         Container(
//             child:           Stack(
//             children: [
//               Image.asset(
//                 'assets/images/auth_top_bg.png',
//                 fit: BoxFit.fill,
//                 width: width,
//                 height: height / 2.5,
//               ),
//               Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                        Container(
//                           padding: EdgeInsets.fromLTRB(20, 50, 0, 50),
//                           child:  Text(
//                           "Welcome\nBack",
//                           style: TextStyle(
//                             fontSize: 35,
//                             fontStyle: FontStyle.normal,
//                             fontWeight: FontWeight.bold,
//                             color: kWhiteColor,
//                            // fontFamily: " ",
//                           ),
//                         ),
//                        ),
                       
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.only(left: 20, right: 20, top: 70),
//               padding: EdgeInsets.only(left: 20, right: 20),
//               height: 54,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.grey[200],
//                 boxShadow: [
//                   BoxShadow(
//                       offset: Offset(0, 10),
//                       blurRadius: 50,
//                       color: Color(0xffEEEEEE)
//                   ),
//                 ],
//               ),
//               child: TextFormField(
//                 cursorColor: kBlueColor,
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.email,
//                     color: kBlueColor,
//                   ),
//                   hintText: "Enter Email",
//                   suffixIcon: Icon(
//                     Icons.task_alt_rounded,
//                     color: kBlueColor,),
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),

//             Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
//               padding: EdgeInsets.only(left: 20, right: 20),
//               height: 54,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Color(0xffEEEEEE),
//                 boxShadow: [
//                   BoxShadow(
//                       offset: Offset(0, 20),
//                       blurRadius: 100,
//                       color: Color(0xffEEEEEE)
//                   ),
//                 ],
//               ),
//               child: TextFormField(
//                 cursorColor: kBlueColor,
//                 decoration: InputDecoration(
//                   focusColor: kBlueColor,
//                   icon: Icon(
//                     Icons.vpn_key,
//                     color: kBlueColor,
//                   ),
//                   hintText: "Enter Password",
//                   suffixIcon: TextButton(
//                               onPressed: _toggle,
//                               child: _obscureText
//                               ?
//                               Icon(
//                                 Icons.visibility_rounded,
//                                 color: kBlueColor
//                               )
//                               :
//                               Icon(
//                                 Icons.visibility_off_rounded,
//                                 color: kBlueColor,
//                                 ),
//                               ),
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//                 validator: (val) =>
//                                 val!.length < 6 ? 'Password too short.' : null,
//                             onSaved: (val) => _password = val!,
//                             obscureText: _obscureText,
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//               alignment: Alignment.centerRight,
//               child: GestureDetector(
//                 onTap: () {
//                   // Write Click Listener Code Here
//                 },
//                 child: Text("Forget Password?"),
//               ),
//             ),
//         GestureDetector(
//           onTap: () {
//             // Write Click Listener Code Here.
//           },
//           child: Container(
//             alignment: Alignment.center,
//             margin: EdgeInsets.only(left: 20, right: 20, top: 70),
//             padding: EdgeInsets.only(left: 20, right: 20),
//             height: 54,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: kBlueColor,
//               boxShadow: [
//                 BoxShadow(
//                     offset: Offset(0, 10),
//                     blurRadius: 50,
//                     color: Color(0xffEEEEEE)),
//               ],
//             ),
//             child: Text(
//               "LOGIN",
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(top: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Don't Have Any Account?  "),
//               GestureDetector(
//                 child: Text(
//                   "Sign Up",
//                   style: TextStyle(color: kBlueColor),
//                 ),
//                 onTap: () {
//                   // Write Tap Code Here.
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //     builder: (context) => SignUpScreen(),
//                   //   )
//                   // );
//                 },
//               )
//             ],
//           ),
//         )
//       ],
//     )));
//   }
// }


import 'package:flutter/material.dart';
import 'package:solution_challenge/screens/auth/login_screen.dart';
import 'package:solution_challenge/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/login': (context) => LoginScreen(),
    },
  ));
}
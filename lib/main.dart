import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/auth/authform.dart';
import 'package:flutter_shopping_app/auth/sign_in.dart';
import 'package:flutter_shopping_app/homescreen.dart';
import 'package:flutter_shopping_app/splash_screen.dart';
import 'package:flutter_shopping_app/walkthrough.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}


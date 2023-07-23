import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/splash_screen2.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //  : implement initState
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const SplashScreen2())); 
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image:
                 AssetImage(
                    'assets/Gallery.jpg'),
                    )),
             child: Center(
  
child: Column(
  
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset('assets/splashImage.png',
    height: MediaQuery.of(context).size.height/3,
  width: MediaQuery.of(context).size.width,
  
    ),

   

     Text("Welcome",
     style:GoogleFonts.alegreya( 
      //fontStyle: FontStyle.normal,
  fontSize: 50,
  fontWeight: FontWeight.w400,
   color: Colors.yellowAccent
                ) ),


  ],
  ),
)
     
      ),

    );
  }
}

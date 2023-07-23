import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/walkthrough.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
 void initState() {
    //  : implement initState
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const WalkThrough())); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/Gallery.jpg'),
      )),

child: Center(
  
child: Column(
  
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset('assets/splashImage.png',
    height: MediaQuery.of(context).size.height/3,
  width: MediaQuery.of(context).size.width,
  
    ),
     Text("Craft My Plate",
     style:GoogleFonts.alegreya( 
    
  fontSize: 50,
  fontWeight: FontWeight.w400,
   color: Colors.yellowAccent
                ),),
const SizedBox(
  height: 14,
),
  Text("You Customise, We Cater!",
  style:GoogleFonts.alegreya(
 fontSize: 25,
   color: Colors.yellowAccent
  )),


  ],
  ),
)

    ));
  }
}

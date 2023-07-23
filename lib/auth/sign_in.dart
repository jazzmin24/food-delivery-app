import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/auth/authform.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
decoration: BoxDecoration(
  image: DecorationImage(

    fit: BoxFit.cover,
    image: AssetImage('assets/SignInbg.jpg')
    )
),



child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      height:400 ,
      width: double.infinity,
      child: Column(
      children: [
       Text('Sign in to continue', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
       Text('Craft My Plate', style: GoogleFonts.alegreya(fontSize: 80,color: Colors.white,shadows: [BoxShadow(blurRadius: 5, color: Colors.purple, offset: Offset(3, 3))]),),
    
   SizedBox(
    height: 20,
   ),

     SignInButton(
      
  Buttons.apple,
  text: "Sign in with Apple",
  onPressed: () {},
),


  SizedBox(
     height: 10,
  ),

  
  SignInButton(
  Buttons.google,
  text: "Sign in with Google",
 onPressed: () async {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => AuthForm())); 
              }, 
),

Text('By signing in you are agreeing to our', style: TextStyle(color: Colors.black),),
Text('Terms and Pricacy Policy',style: TextStyle(color: Colors.black),),
     
      ]
      ),
    



    )
  ],
),

      ),

    );
  }
}
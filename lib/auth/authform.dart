import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool passToggle = true;
  // bool emailValid = RegExp(
  //         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
  //     .hasMatch(value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Just a step away!',
                    style: GoogleFonts.alegreya(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 50),
                    //  textAlign: TextAlign.right,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple)),
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email,
                        )),
                    validator: (value) { 
                      bool emailValid = RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(value!);
                      if (value .isEmpty) {
                        return "Enter Email";
                      } else if (!emailValid) {
                        return "Enter valid Email";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: passwordcontroller,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple)),
                          labelText: "Password",
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(passToggle
                                ? Icons.visibility
                                : Icons.visibility_off),
                          )),
                      validator: (value) { 
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passwordcontroller.text.length < 6) {
                          return "Password length should not exceed 6 characters";
                        }
                      }),
                  const SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        print('Data added sucessfully');
                        emailcontroller.clear();
                        passwordcontroller.clear();
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          )),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}

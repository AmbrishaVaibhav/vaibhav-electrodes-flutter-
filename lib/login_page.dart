// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import 'screen_3.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

// ignore: camel_case_types
class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 214, 141, 254), Colors.white],
              stops: [0.3,0.9]
               ),),
      child: Scaffold(
         
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SizedBox(
                      height: 60,
                    ),
                    Icon(Icons.account_circle_rounded,size: 120),
                    //Hey,there!
                      SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'VAIBHAV ELECTRODES',
                        style: GoogleFonts.raleway(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        
                        ),
                      ),
                    ),
                
                  
                    Text(
                      'Welding rod manufacturer',
                      style: TextStyle(
                        fontSize: 20,
                       
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    //userid textfield
                
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'User Id'),
                          ),
                        ),
                      ),
                    ),
                    //password textfield
                
                    SizedBox(
                      height: 10,
                    ),
                
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)),
                        // ignore: prefer_const_constructors
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          // ignore: prefer_const_constructors
                          child: TextField(
                            obscureText: true,
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Password'),
                          ),
                        ),
                      ),
                    ),
                    //Signin button
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45.0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => screen2()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 159, 3, 225),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          )),
                    ),
                    //not a member?register now
                    SizedBox(
                      height: 10,
                    ),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member? ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => screen3()));
                          },
                          child: Text(
                            'Register now',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.black,
                                decorationThickness: 1,
                                color: Color.fromARGB(255, 132, 1, 188),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

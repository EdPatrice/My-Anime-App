import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'sign_up.dart';
import 'dart:ui'; // pour ImageFilter

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              "assets/images/home_background_2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          // foreground
          Align(
            alignment: Alignment.center,
            child: ClipRRect( // Clip Rounded Rectangle Shape
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), //adjust the blur intensity
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),            
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                            fontSize: 24, 
                            fontWeight: FontWeight.bold, 
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Please sign in if you already have an account \n\nor\n\n Sign up to create a new one.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,                               
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ),
            ),
          ),
          // bottom buttons 
          Align(
            alignment: Alignment.bottomCenter,              
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        print("Sign in button pressed");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    )
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                          ),
                          color: Color(0xFFE2F6FB),
                        ), 
                        child: TextButton(
                          onPressed: (){
                            print("Sign up button pressed");
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF091219),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  
  }
}

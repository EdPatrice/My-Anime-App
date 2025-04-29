import 'package:flutter/material.dart';
import 'dart:ui';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double topScreenSpace = screenHeight*0.15;

    return Scaffold(      
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_3.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: topScreenSpace),
          Positioned(
            // top: topScreenSpace,
            left: 0,
            right: 0,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: double.infinity,
                height: screenHeight-topScreenSpace,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                  )
                ),
                child: Column(
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold, 
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // back arrow
          Positioned(
            top: 40,
            left: 16,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
          ),
        ],
      )
    );
  }
}
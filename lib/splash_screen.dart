import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/welcome_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          Container(
            color: Colors.purple, // Changed background color to purple
          ),
          AnimatedSplashScreen(
            splash: Image.asset('assets/logo.jpg'),
            nextScreen: const WelcomePage(),
            splashTransition: SplashTransition.scaleTransition,
            duration: 5000,
          ),
          const Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Text(
              'Kidor',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


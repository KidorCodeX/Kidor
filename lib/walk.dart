import 'package:flutter/material.dart';
import 'package:my_first_app/signup_page.dart';

class Walk extends StatelessWidget {
  const Walk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(213, 202, 255, 1),
        
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: const Color.fromRGBO(213, 202, 255, 1),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/walkthroughPage/walk1.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                  ),
                ),
              ),
            ),
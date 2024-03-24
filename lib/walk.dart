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
            Container(
              height: 450, 
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                   const Center(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 50),
                      child: SizedBox(
                        width: 300,
                        height: 60,
                        child:  Center(
                          child: Text("Choose Your Subject",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight:  FontWeight.bold,
                              )
                          )
                        )
                      ),
                    )
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: SizedBox(
                        width: 300,
                        height: 120,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 21),
                            child: Text("Select your subject and unlock an augmented reality learning experience that brings your studies to life.",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight:  FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        )
                      ),
                    )
                  ),
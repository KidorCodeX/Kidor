import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Container(
              width: 100,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/logo.jpg"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
      body: 
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 208,
              child: Center(
            child: Stack(
                  children: [
                    Positioned(
                      left: 30,
                      top: 20,
                      child: Container(
                        width: 350,
                        height: 115,
                        decoration: const BoxDecoration(color: Color(0xFFD4C9FE)),
                      ),
                      
                    ),
                    
                    Positioned(
                      left: 148,
                      top: 71,
                      child: Container(
                        width: 115,
                        height: 118,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/me.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
            
                  ],
                ),
                  
                  ),
            ),
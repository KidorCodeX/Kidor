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
            const SizedBox(
              width: double.infinity,
              height: 40,
              child: Center(
                child: Text(
                  "Student",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 120,
              //color: Colors.blue,
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 166,
                        height: 87,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), 
                              spreadRadius: 5, 
                              blurRadius: 7, 
                              offset: const Offset(0, 3), 
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/Lessons.png"),
                                  fit: BoxFit.fill,
                                  ),
                                
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              ),
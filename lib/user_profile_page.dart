import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kidor",),
          
        centerTitle: true,
        leading: Image.asset("assets/idk.jpg", height: 300,width: 200),
      
        toolbarHeight: 100,
          
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
                  "Tharusha Kulasinghe",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
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
                    fontWeight: FontWeight.w300
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
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: SizedBox(
                                  width: 91,
                                  height: 95,
                                  child: Column(
                                    children: [
                                      Text(
                                        "8",
                                        style: 
                                        TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      Text(
                                        "Lessons",
                                        style: 
                                        TextStyle(
                                          fontSize: 15
                                        )
                                      ),
                                      
                                      
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )

                    ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        width: 166,
                        height: 80,
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
                                  image: AssetImage("assets/Accuracy.png"),
                                  fit: BoxFit.fill,
                                  ),
                                
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: SizedBox(
                                  width: 91,
                                  height: 95,
                                  child: Column(
                                    children: [
                                      Text(
                                        "50%",
                                        style: 
                                        TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      Text(
                                        "Accuracy",
                                        style: 
                                        TextStyle(
                                          fontSize: 15
                                        )
                                      ),
                                      
                                      
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                     ),
                    
                  ],
                ),
              )
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
                                  image: AssetImage("assets/Progress.png"),
                                  fit: BoxFit.fill,
                                  ),
                                
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: SizedBox(
                                  width: 91,
                                  height: 95,
                                  child: Column(
                                    children: [
                                      Text(
                                        "30%",
                                        style: 
                                        TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      Text(
                                        "Progress",
                                        style: 
                                        TextStyle(
                                          fontSize: 15
                                        )
                                      ),
                                      
                                      
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )

                    ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        width: 166,
                        height: 80,
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
                                  image: AssetImage("assets/Quizzes.png"),
                                  fit: BoxFit.fill,
                                  ),
                                
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: SizedBox(
                                  width: 91,
                                  height: 95,
                                  child: Column(
                                    children: [
                                      Text(
                                        "20%",
                                        style: 
                                        TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      Text(
                                        "Quizzes",
                                        style: 
                                        TextStyle(
                                          fontSize: 15
                                        )
                                      ),
                                      
                                      
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                     ),
                    
                  ],
                ),
              )
            ),

          ],
        )
      
      
      


    );
    
  }
}

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
                  Center(
                    child: Container(
                      width: 70,
                      height: 35,
                      color: Colors.white,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  color: const Color.fromRGBO(107, 112, 248, 1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    color: const Color.fromRGBO(107, 112, 248, 1),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    color: const Color.fromRGBO(107, 112, 248, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.white,
                            child: Center(
                              child: RawMaterialButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                  print("Hello world");
                                },
                                child: const SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Center(
                                    child: Text("Skip",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight:  FontWeight.w500,
                                        color:  Color.fromRGBO(107, 112, 248, 1),
                                      )
                                    ),
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.white,
                            child: Center(
                              child: RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Walk2()),
                                  );
                                },
                                elevation: 2.0,
                                fillColor: const Color.fromRGBO(213, 202, 255, 1),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20.0), 
                                child: const SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_rounded, 
                                      color: Colors.white, 
                                      size: 35, 
                                    ),
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Walk2 extends StatelessWidget {
  const Walk2({Key? key}) : super(key: key);

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
                            image: AssetImage('assets/walkthroughPage/walk2.png'),
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
                          child: Text("Connect you with AR",
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
                            child: Text("where interactive lessons seamlessly blend technology and learning for an immersive educational experience",
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
                  Center(
                    child: Container(
                      width: 70,
                      height: 35,
                      color: Colors.white,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  color: const Color.fromRGBO(107, 112, 248, 1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    color: const Color.fromRGBO(107, 112, 248, 1),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    color: const Color.fromRGBO(107, 112, 248, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.white,
                            child: Center(
                              child: RawMaterialButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                child: const SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Center(
                                    child: Text("Skip",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight:  FontWeight.w500,
                                        color:  Color.fromRGBO(107, 112, 248, 1),
                                      )
                                    ),
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.white,
                            child: Center(
                              child: RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Walk3()),
                                  );
                                },
                                elevation: 2.0,
                                fillColor: const Color.fromRGBO(213, 202, 255, 1),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20.0), 
                                child: const SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_rounded, 
                                      color: Colors.white, 
                                      size: 35, 
                                    ),
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Walk3 extends StatelessWidget {
  const Walk3({Key? key}) : super(key: key);

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
                            image: AssetImage('assets/walkthroughPage/walk3.png'),
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
                          child: Text("You can learn",
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
                            child: Text(" Unleash the potential to learn Anything, Anytime, Anywhere, and conquer the world of knowledge",
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
                  Center(
                    child: Container(
                      width: 70,
                      height: 35,
                      color: Colors.white,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  color: const Color.fromRGBO(107, 112, 248, 1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    color: const Color.fromRGBO(107, 112, 248, 1),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    color: const Color.fromRGBO(107, 112, 248, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.white,
                            child: Center(
                              child: RawMaterialButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                child: const SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Center(
                                    child: Text("Skip",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight:  FontWeight.w500,
                                        color:  Color.fromRGBO(107, 112, 248, 1),
                                      )
                                    ),
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.white,
                            child: Center(
                              child: RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Signup()),
                                  );
                                },
                                elevation: 2.0,
                                fillColor: const Color.fromRGBO(213, 202, 255, 1),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20.0), 
                                child: const SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_rounded, 
                                      color: Colors.white, 
                                      size: 35, 
                                    ),
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

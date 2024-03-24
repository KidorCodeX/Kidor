import 'package:flutter/material.dart';
import 'package:my_first_app/astronomy_page.dart';
import 'package:my_first_app/biology_page.dart';
import 'package:my_first_app/maths_page.dart';
import 'package:my_first_app/science_page.dart';

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
       debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Container(
              width: 100,
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


      body: SingleChildScrollView( 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 370,
                height: 125,
                decoration: ShapeDecoration(
                  color: const Color(0xFF6855FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 100,
                          height: 90,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/lessonsPage/binocular.png"),
                              fit: BoxFit.fill,
                              ),
                                        
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: SizedBox(
                                width: 200,
                                height: 30,
                                //color: Colors.black,
                                child: Text(
                                  'AR Learning Gateway',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                width: 40,
                                height: 2,
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: SizedBox(
                                width: 260,
                                height: 40,
                                //color: Colors.black,
                                child: Text(
                                  'Enjoy learning with the newest technology...',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.white,
                  margin: const EdgeInsets.all(10),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Subjects',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.filter_list_outlined,                  
                         color: Colors.black,
                          size: 35,
                        ),
                      ],
                    ),
                
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 160,
                color: Colors.white,
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Container(
                          width: 163,
                          height: 155,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/lessonsPage/science.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: RawMaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SciencePage()),
                                );
                            },
                            shape: const RoundedRectangleBorder(
                            ),
                            padding: const EdgeInsets.all(20.0), 
                            
                          ),
                    
                        ),
                       Padding(
                         padding: const EdgeInsets.only(left: 30),
                         child: Container(
                            width: 163,
                            height: 155,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/lessonsPage/biology.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const BiologyPage()),
                                );
                              },
                              shape: const RoundedRectangleBorder(
                              ),
                              padding: const EdgeInsets.all(20.0), 
                              
                            ),
                                             
                          ),
                       ),
                      ],
                    ),
                  ),
                )
              ),
              Container(
                width: double.infinity,
                height: 160,
                color: Colors.white,
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Container(
                          width: 163,
                          height: 155,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/lessonsPage/chemistry.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: RawMaterialButton(
                            onPressed: () {
                              // Add your onPressed logic here
                            },
                            shape: const RoundedRectangleBorder(
                            ),
                            padding: const EdgeInsets.all(20.0), 
                            
                          ),
                    
                        ),
                       Padding(
                         padding: const EdgeInsets.only(left: 30),
                         child: Container(
                            width: 163,
                            height: 155,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/lessonsPage/english.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: RawMaterialButton(
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                              shape: const RoundedRectangleBorder(
                              ),
                              padding: const EdgeInsets.all(20.0), 
                              
                            ),
                                             
                          ),
                       ),
                      ],
                    ),
                  ),
                )
              ),
              Container(
                width: double.infinity,
                height: 160,
                color: Colors.white,
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Container(
                          width: 163,
                          height: 155,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/lessonsPage/mathematics.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: RawMaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const MathsPage()),
                                );
                            },
                            shape: const RoundedRectangleBorder(
                            ),
                            padding: const EdgeInsets.all(20.0), 
                            
                          ),
                    
                        ),
                       Padding(
                         padding: const EdgeInsets.only(left: 30),
                         child: Container(
                            width: 163,
                            height: 155,
                            decoration: BoxDecoration(
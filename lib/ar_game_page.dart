import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});
  
 

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
       debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 90,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/logo.jpg"),
              fit: BoxFit.fill,
            ),
                                    
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        )
      ),
      body: SingleChildScrollView( 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Container(
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
                                    'Games | AR Special',
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
                                    'Kidor has AR special games just for you!',
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
                              'Games',
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
                width: 309,
                height: 319,
                child: Material(
                  elevation: 4, // Adjust the elevation value as needed
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            width: 250,
                            height: 268,
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/gamePage/gameTemplate.jpg"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),

                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Container(
                                    width: 310,
                                    height: 125,
                                    decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage("assets/gamePage/gamePic.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1),
                                      ),
                                    ),
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(left: 23),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 111,
                                        height: 26,
                                        child: const Text(
                                          'Road-Map',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight:  FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 23),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: Container(
                                          width: 70,
                                          height: 25,
                                          decoration: ShapeDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage("assets/gamePage/gameStars.jpg"),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(1),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // onTap functionality here
                                          print('Button clicked!');
                                        },
                                        child: Container(
                                          width: 75,
                                          height: 35,
                                          decoration: ShapeDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage("assets/gamePage/gameButton.jpg"),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(1),
                                            ),
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
}
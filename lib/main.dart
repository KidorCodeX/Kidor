import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App demo",
      home: Scaffold(
        appBar: AppBar(
          //title: const Text("Kidor",),
          
          centerTitle: true,
          leading: Image.asset("assets/idk.jpg", height: 300,width: 200),
      
          toolbarHeight: 100,
          
        ),

      
        body: Center(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 370,
            height: 140,
            decoration: ShapeDecoration(
              color: const Color(0xFF6855FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'AR | Portal',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Unlock the wonders of education through the magic of Portal experience",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 350,
            height: 467,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/idk.jpg"),
                fit: BoxFit.fill,
                ),
              
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
           
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Container(
                      width: 250,
                      height: 130,                
                      decoration: ShapeDecoration(
                        color:Colors.black.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Container(
                                width: 80,
                                height: 100,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/idk.jpg"),
                                    fit: BoxFit.fill,
                                    ),
                                  
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              
                              
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: SizedBox(
                                width: 137,
                                height: 100,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              children: [
                                                Center(
                                                  child: Text('Rainforest',
                                                  style: TextStyle(
                                                    color: Colors.white
                                                    
                                                  ),),
                                                  
                                                ),
                                                Icon(
                                                  Icons.location_on, // Replace with the desired icon
                                                  color: Colors.white, // Set the desired icon color
                                                  size: 24, // Set the desired icon size
                                                ),
                                                
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Center(
                                                child: Text('2KM',
                                                style: TextStyle(
                                                  color: Colors.white
                                                  
                                                ),),
                                                
                                              ),
                                              Icon(
                                                Icons.local_taxi_outlined, // Replace with the desired icon
                                                color: Colors.white, // Set the desired icon color
                                                size: 24, // Set the desired icon size
                                              ),
                                              Center(
                                                child: Text('5pm',
                                                style: TextStyle(
                                                  color: Colors.white
                                                  
                                                ),),
                                                
                                              ),
                                              Icon(
                                                Icons.timer_outlined, // Replace with the desired icon
                                                color: Colors.white, // Set the desired icon color
                                                size: 24, // Set the desired icon size
                                              ),
                                              
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                
                              ),
                              
                              
                            ),
                          ),
                          
                        ],
                      ),
                    )
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

        
        
      ),
    );
  }
}


//Unlock the wonders of education through themagic of Portal experience
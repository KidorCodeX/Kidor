import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ArPortalPage extends StatelessWidget{
  const  ArPortalPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Kidor",),
          
          centerTitle: true,
          leading: Image.asset("assets/idk.jpg", height: 300,width: 200),
      
          toolbarHeight: 100,
          
        ),

      
        body: Center(
  child: Padding(
    padding: const EdgeInsets.only(bottom: 20),
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
                    padding: EdgeInsets.only(bottom: 15),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Text(
                            'AR | Portal',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                         
                        ],
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
                      width: 277,
                      height: 130,                
                      decoration: ShapeDecoration(
                        color:Colors.white.withOpacity(0.6),
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
                                width: 150,
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
                                                    color: Colors.black
                                                    
                                                  ),),
                                                  
                                                ),
                                                Icon(
                                                  Icons.location_on, // Replace with the desired icon
                                                  color: Colors.black, // Set the desired icon color
                                                  size: 24, // Set the desired icon size
                                                ),
                                                
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 5),
                                                child: Center(
                                                  child: Text('2KM',
                                                  style: TextStyle(
                                                    color: Colors.black
                                                    
                                                  ),),
                                                  
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 5),
                                                child: Icon(
                                                  Icons.local_taxi_outlined, // Replace with the desired icon
                                                  color: Colors.black, // Set the desired icon color
                                                  size: 24, // Set the desired icon size
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 24,top: 5),
                                                child: Center(
                                                  child: Text('5pm',
                                                  style: TextStyle(
                                                    color: Colors.black
                                                    
                                                  ),),
                                                  
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 5),
                                                child: Icon(
                                                  Icons.timer_outlined, // Replace with the desired icon
                                                  color: Colors.black, // Set the desired icon color
                                                  size: 24, // Set the desired icon size
                                                ),
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
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: TextButton(
            onPressed: () {
              // Add your onPressed function here
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.zero,
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent,
              ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            child: Container(
              width: 250,
              height: 70,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.explore,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 8), // Adjust the space between icon and text
                  Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),


      ],
      
    ),
    
  ),
),

        
        
      );
  }
}
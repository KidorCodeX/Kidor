import 'package:flutter/material.dart';

class Walk extends StatelessWidget {
  const Walk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Red Container'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    
                    decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/walk1.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                  ),
                ),
              ),
            ),
            Container(
              height: 400, // Adjust the height of the red container
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              alignment: Alignment.bottomCenter,
              child: const Center(
                child: Text(
                  'Bottom ',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

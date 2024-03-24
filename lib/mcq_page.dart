// import 'package:flutter/material.dart';
// import 'package:my_first_app/chat_page.dart';
// import 'package:my_first_app/QuizPage.dart';

// class McqPage extends StatelessWidget {
//   const McqPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//          debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Bottom Red Container'),
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Center(
//               child: Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.black,
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => QuizPage()),
//                     );
//                   },
//                   child: Container(
//                     width: 80,
//                     height: 80,
//                     decoration: ShapeDecoration(
//                       color: Colors.white.withOpacity(0.10),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(80),
//                       ),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         'MCQ',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Center(
//               child: Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.black,
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => ChatPage()),
//                     );
//                   },
//                   child: Container(
//                     width: 80,
//                     height: 80,
//                     decoration: ShapeDecoration(
//                       color: Colors.white.withOpacity(0.10),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(80),
//                       ),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         'Generate',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_app/QuizPage.dart';
import 'package:my_first_app/ar_game_page.dart';
import 'package:my_first_app/ar_portal_page.dart';
import 'package:my_first_app/home_page.dart';
import 'package:my_first_app/lessons_page.dart';
import 'package:my_first_app/login_page.dart';
import 'package:my_first_app/quiz_page.dart';
import 'package:my_first_app/screens/home_screen.dart';
import 'package:my_first_app/user_profile_page.dart';
import 'package:my_first_app/views/home_screen.dart';
import 'package:provider/provider.dart';



class SideBar extends StatelessWidget {
    const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sidebar.jpg'),
                fit: BoxFit.fill,
              ),
       
                    
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Kidor',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:  FontWeight.bold,
                  color: Colors.white
                ),),
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/me.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Text('Free User',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),
                const Text('Since 2024',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),
              ],
            ),

          ),
          ListTile(
              leading: Icon(Icons.home), 
              title: Text('Home'),
              onTap: () {
                
              },
            ),

          ListTile(
            leading: Icon(Icons.play_lesson), 
            title: Text('AR Lessons'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LessonsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.handshake_outlined), 
            title: Text('Lesson Quiz'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizHomePage()),
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.gamepad), 
            title: Text('AR games'),
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GamePage()),
              ); 
            },
          ),
          ListTile(
            leading: Icon(Icons.door_back_door), 
            title: Text('AR portal'),
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArPortalPage()),
              );  
            },
          ),
          ListTile(
            leading: Icon(Icons.quiz), 
            title: Text('Quizzes'),
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark_outlined), 
            title: Text('Note Book'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NoteBook()),
              );  
            },
          ),
          ListTile(
            leading: Icon(Icons.person), 
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserProfile()),
              );   // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward_rounded), 
            title: Text('Sign Out'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Login()), 
            );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            height: 30,
            width: 500,
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "©Researched & Developed By",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          
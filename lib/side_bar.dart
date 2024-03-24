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
       
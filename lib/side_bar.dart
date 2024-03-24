import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_app/ar_game_page.dart';
import 'package:my_first_app/ar_portal_page.dart';
import 'package:my_first_app/lessons_page.dart';
import 'package:my_first_app/login_page.dart';
import 'package:my_first_app/quiz_page.dart';
import 'package:my_first_app/screens/home_screen.dart';
import 'package:my_first_app/user_profile_page.dart';
import 'package:my_first_app/views/home_screen.dart';



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

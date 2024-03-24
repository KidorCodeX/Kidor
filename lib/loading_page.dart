import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_app/home_page.dart';

class LoadingPage extends StatefulWidget {
  final String firstName;

  const LoadingPage({Key? key, required this.firstName}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    // Check if the user's email is verified when the page is loaded
    checkEmailVerification();
  }

  void checkEmailVerification() async {
    setState(() {
      _loading = true;
    });
    User? user = _auth.currentUser;
    if (user != null && user.emailVerified) {
      // If email is verified, navigate to the home page with the first name
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage(username: widget.firstName)),
      );

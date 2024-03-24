import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_app/signup_page.dart';
import 'package:my_first_app/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  

  bool _isObscure = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailError;
  String? _passwordError;

  void _clearErrors() {
    setState(() {
      _emailError = null;
      _passwordError = null;
    });
  }

  Future<void> _signInWithEmailAndPassword() async {
    _clearErrors();

    if (_emailController.text.isEmpty || !_emailController.text.contains('@')) {
      setState(() {
        _emailError = 'Please enter a valid email address';
      });
      return;
    }

    if (_passwordController.text.isEmpty) {
      setState(() {
        _passwordError = 'Please enter a password';
      });
      return;
    } 

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
  

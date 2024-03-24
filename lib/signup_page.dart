import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_app/firebase_auth_methods.dart';
import 'package:my_first_app/loading_page.dart';
import 'package:my_first_app/login_page.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isObscure = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Add form key

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signUpUser(BuildContext scaffoldContext) async {
  FirebaseAuthMethods authMethods = FirebaseAuthMethods(FirebaseAuth.instance);
  await authMethods.signUpWithEmail(
    email: emailController.text,
    password: passwordController.text,
    context: scaffoldContext,
  );

 
 
}


  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email address is required';
    }
    // Add more complex email validation if needed
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    // Add more complex password validation if needed
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(15),
    );

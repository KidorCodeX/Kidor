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
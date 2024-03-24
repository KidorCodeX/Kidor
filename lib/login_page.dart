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

      User? user = userCredential.user; 

      if (user != null) {
            // Save user email to shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('user_email', _emailController.text);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage(username:'Start learning')),
        );
      } else {
        print("User is null");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid email or password'),
            duration: Duration(seconds: 3),
          ),
        );
      } else {
        Text('Error: $e');
      }
    }
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

    return MaterialApp(
         debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(  
                                   padding: EdgeInsets.only(top: 170),
                  child: SizedBox(
                    width: 346,
                    height: 56,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 1),
                        child: Text(
                          "Welcome Back!",
                          style: TextStyle(
                            fontSize: 29,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                                    width: 346,
                  height: 56,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        "Login to continue",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    width: 158,
                    height: 105,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/signUp.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18, right: 8, top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email Address ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      focusedBorder: border,
                      enabledBorder: border,
                      errorText: _emailError,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18, right: 8, top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      focusedBorder: border,
                      enabledBorder: border,
                      suffixIcon: IconButton(
                        padding: const EdgeInsetsDirectional.only(end: 12),
                        icon: _isObscure ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;                  
                          });
                        },
                      ),
                      errorText: _passwordError,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: TextButton(
                    onPressed: _signInWithEmailAndPassword,
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero,
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.transparent,
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
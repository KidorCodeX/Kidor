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
  bool _isObscure = true; // Boolean variable to track password visibility
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Add form key

  @override
  void dispose() {
    super.dispose();
     // Dispose the controllers to free up resources when the state is destroyed
    emailController.dispose();
    passwordController.dispose();
  }


  // Method to sign up user using provided email and password
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
 
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
   
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

    return MaterialApp(
         debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Form( 
              key: _formKey,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: SizedBox(
                      width: 346,
                      height: 56,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: Text("Get started",
                            style: TextStyle(
                              fontSize: 29,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
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
                          child: Text("Sign up to continue",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                  ),
                  Container(
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
                  const Padding(
                    padding: EdgeInsets.only(left: 18, right: 8, top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "First Name",
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
                      controller: firstNameController,
                      decoration: InputDecoration(
                          hintText: "Amadee",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          focusedBorder: border,
                          enabledBorder: border
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18, right: 8, top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Last Name",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15,bottom: 15),
                    child: TextField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                          hintText: "Ranasinghe",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          focusedBorder: border,
                          enabledBorder: border
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
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "abc@gmail.com",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      validator: _validateEmail,
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
                      obscureText: _isObscure,
                      controller: passwordController,
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
                      ),
                      validator: _validatePassword,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          signUpUser(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoadingPage(firstName: firstNameController.text)),
                          );
                          
                        }
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero,
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.transparent,
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      child: Container(
                        width: 320,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: const Color.fromRGBO(107, 112, 248, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(left: 18, right: 8, top: 15, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: Colors.red, // Change color to your preference
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

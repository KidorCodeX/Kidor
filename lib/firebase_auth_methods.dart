import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class FirebaseAuthMethods{
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  User get user => _auth.currentUser!;
  //Email sign up
  Future<void>  signUpWithEmail({
    required String email,
    required String  password,
    required BuildContext context,
  }) async{
    try{
      await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
      );
      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

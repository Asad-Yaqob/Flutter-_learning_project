import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyFirebaseServices{
  static  UserRegister(TextEditingController Email, TextEditingController Pass) async{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: Email.text, password: Pass.text);
  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration Successful!")));
 }

  }
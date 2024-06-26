import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Auth/login.dart';
import '../BottomNavigationBar/main_screen.dart';

class MyFirebaseServices {

  static void userRegister(TextEditingController userEmail, TextEditingController userPass, BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: userEmail.text, password: userPass.text);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration Successful!")));

    }on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

  static void userLogin(TextEditingController userEmail, TextEditingController userPass, BuildContext context) async{
    try{
     await FirebaseAuth.instance.signInWithEmailAndPassword(email: userEmail.text, password: userPass.text);

     final SharedPreferences userLog = await SharedPreferences.getInstance();
     userLog.setString("userEmail", userEmail.text);

     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login Successful!")));
      Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));

    } on FirebaseAuthException catch (e){
      ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text("$e")));

    }

  }

  static void userLogout(BuildContext context) async{
    SharedPreferences userLog = await SharedPreferences.getInstance();
    userLog.clear();
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
  }
  static Future getUserDetails() async{
    SharedPreferences userLog = await SharedPreferences.getInstance();
    var email =  userLog.getString("userEmail");

    return email;
  }

}


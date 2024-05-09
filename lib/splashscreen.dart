import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void getDetails() async{
    SharedPreferences userLog = await SharedPreferences.getInstance();
    var email = userLog.getString("userEmail");
    if (email != null) {
      Timer(Duration(milliseconds: 2000), () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
      });
    }
    else {
      Timer(Duration(milliseconds: 2000), (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      });
    }
  }

  @override
  void initState(){
    getDetails();
    super.initState();
  }
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("SplashScreen!"),
      ),
    );
  }
}

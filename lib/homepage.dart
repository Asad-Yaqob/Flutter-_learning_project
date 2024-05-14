import 'package:flutter/material.dart';
import 'package:learning_project/Services/firebase_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String  userEmail = " ";

  @override
  void initState(){
   MyFirebaseServices.getUserDetails().then( (value) {
      setState(() {
        userEmail = value;
      });
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userEmail),
           SizedBox(height: 40,),
           ElevatedButton(onPressed: (){
                   MyFirebaseServices.userLogout(context);
           }, child: const Text("Logout"))
          ],
        ),
      ),
    );
  }
}

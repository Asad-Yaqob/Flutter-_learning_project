import 'package:flutter/material.dart';
import 'package:learning_project/login.dart';
import 'package:learning_project/services/firebase_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String  userEmail = " ";

  Future getUserDetails() async{
    SharedPreferences userLog = await SharedPreferences.getInstance();
    var email =  userLog.getString("userEmail");

    return email;
  }

  @override
  void initState(){
    getUserDetails().then( (value) {
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

import 'package:flutter/material.dart';
import 'package:learning_project/login.dart';
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

  void userLogout () async{
    SharedPreferences userLog = await SharedPreferences.getInstance();
    userLog.clear();
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
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
          children: [
            Text(userEmail),
           SizedBox(height: 40,),
           ElevatedButton(onPressed: (){
                   userLogout();
           }, child: const Text("Logout"))
          ],
        ),
      ),
    );
  }
}

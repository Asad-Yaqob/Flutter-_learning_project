import 'package:flutter/material.dart';
import 'package:learning_project/login.dart';
import 'package:learning_project/services/firebase_services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool isHide =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Form(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                width: 400,
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                    ),
                    Container(
                      child: Text('Register to Your Account' ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffE7EDED),
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(color: Color(0xffE7EDED)),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: pass,
                      obscureText: isHide,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffE7EDED),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },
                          icon: isHide ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                        ),
                        // border: InputBorder.none,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(color: Color(0xffE7EDED)),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: (){
                          MyFirebaseServices.userRegister(email, pass, context);
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.blue
                        ),
                        child: Center(child: Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text('or continue with',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 26),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text('dont have an account?',style: TextStyle(color: Colors.grey),),
                            ),
                            SizedBox(width: 6),
                            GestureDetector(

                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                                },
                                child: Container(
                                  child: Text('Sign in',style: TextStyle(color: Colors.blue),),
                                ),
                              ),
                            )
                          ],
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
    );
  }
}

class UserRegister {
}

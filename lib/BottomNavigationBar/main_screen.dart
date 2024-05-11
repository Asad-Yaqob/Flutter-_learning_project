import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_project/BottomNavigationBar/cart_screen.dart';
import 'package:learning_project/BottomNavigationBar/home_screen.dart';
import 'package:learning_project/BottomNavigationBar/product_screen.dart';
import 'package:learning_project/BottomNavigationBar/profile_screen.dart';
import 'package:learning_project/services/firebase_services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;
  void PageShifter(index){
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> myScreens = [
    HomeScreen(),
    ProductScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar",),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            MyFirebaseServices.userLogout(context);
          }, icon: Icon(Icons.logout, color: Colors.black,))

        ],
      ),
      body: myScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: PageShifter,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "Product"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),

          ]
      ),
    );
  }
}

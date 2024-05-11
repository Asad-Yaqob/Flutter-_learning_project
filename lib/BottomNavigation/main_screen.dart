import 'package:flutter/material.dart';
import 'package:learning_project/BottomNavigation/cart_screen.dart';
import 'package:learning_project/BottomNavigation/home_screen.dart';
import 'package:learning_project/BottomNavigation/product_screen.dart';
import 'package:learning_project/BottomNavigation/profile_screen.dart';
import 'package:learning_project/Services/firebase_services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0 ;

  void pageShifter(index){
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
        title: const Text("Basic App", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.grey,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            MyFirebaseServices.userLogout(context);
          }, icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: myScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: pageShifter,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}

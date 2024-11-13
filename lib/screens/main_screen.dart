import 'package:flutter/material.dart';
import 'package:home_page_mobile_app/screens/about/about_screen.dart';
import 'package:home_page_mobile_app/screens/favorites/favourites_screen.dart';
import 'package:home_page_mobile_app/screens/home/home_screen.dart';
import 'package:home_page_mobile_app/screens/new/new_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? currentindex;

  List<Widget> data = [
    const HomeScreen(),
    const AboutScreen(),
    const FavouiteScreen(),
    const NewScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex ?? 0,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined), label: "Pages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Profile")
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      body: Center(child: data[currentindex ?? 0]),
    );
  }
}

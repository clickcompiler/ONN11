import 'package:cricket/UI/home/home.dart';
import 'package:cricket/theme/const_color.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [if (activeIndex == 0) Expanded(child: HomeScreen())],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              activeIndex = value;
            });
          },
          currentIndex: activeIndex,
          unselectedItemColor: Black01,
          selectedItemColor: Colors.blue,
          unselectedLabelStyle: TextStyle(color: Black01),
          unselectedIconTheme: IconThemeData(color: Black01),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.emoji_events_outlined,
                ),
                label: "My Matches"),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard_outlined), label: "Rewards"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_police_outlined), label: "Winners"),
            BottomNavigationBarItem(icon: Icon(Icons.sort), label: "More"),
          ]),
    );
  }
}

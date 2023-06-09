import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/features/Pages/Explore/Explore.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [const Explore(),const Explore(),const Explore()];
  int currentIndex = 0;

  void onTap(int index){
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currentIndex],
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            backgroundColor: Color(0x880A0A0A).withOpacity(.6),
            type: BottomNavigationBarType.fixed,
            onTap: onTap,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade500,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 0,
            items: const[
              BottomNavigationBarItem(
                        icon: Icon(Icons.location_on_outlined),
                        activeIcon: Icon(Icons.location_on_outlined),
                        label: 'Explore'),
              BottomNavigationBarItem(
                        icon: Icon(Icons.flight_outlined),
                        activeIcon: Icon(Icons.flight_outlined),
                        label: 'Trip'),
              BottomNavigationBarItem(
                        icon: Icon(Icons.person_3_outlined),
                        activeIcon: Icon(Icons.person_2_outlined),
                        label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
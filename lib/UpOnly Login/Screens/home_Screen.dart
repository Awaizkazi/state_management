import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff1E294E),
      body: SafeArea(
        child: HomePage(),
      ),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  // Animated Bottom Navigation Bar
  Widget buildBottomNavigation() {
    return BottomNavyBar(
      animationDuration: Duration(microseconds: 500),
      backgroundColor: Color.fromARGB(255, 234, 203, 240),
      itemCornerRadius: 10,
      selectedIndex: index,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          activeColor: Colors.grey.shade900,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.info),
          title: Text('Info'),
          activeColor: Colors.grey.shade900,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.dashboard),
          title: Text('Dashboard'),
          activeColor: Colors.grey.shade900,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('HRMS'),
          activeColor: Colors.grey.shade900,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.call),
          title: Text('Persons'),
          activeColor: Colors.grey.shade900,
          textAlign: TextAlign.center,
        ),
      ],
      onItemSelected: (index) => setState(() => this.index = index),
    );
  }
}

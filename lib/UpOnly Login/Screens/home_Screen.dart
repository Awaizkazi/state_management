import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:state_management/UpOnly%20Login/Screens/HRMS_screens.dart';
import 'package:state_management/UpOnly%20Login/Screens/HomePage.dart';
import 'package:state_management/UpOnly%20Login/Screens/dashboard_screen.dart';
import 'package:state_management/UpOnly%20Login/Screens/info_screen.dart';
import 'dial_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List Pages = [
    HomePage(),
    InfoScreen(),
    DashBoard_Screen(),
    HRMS_Screen(),
    Dial_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      backgroundColor: Color(0xff1E294E),
      bottomNavigationBar: BottomNavyBar(
        // Current Index by Dafault here we set the home page
        selectedIndex: currentIndex,
        animationDuration: Duration(microseconds: 300),
        backgroundColor: Color.fromARGB(255, 235, 210, 239),
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCornerRadius: 10,
        // Items are here
        items: [
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
            title: Text('Dial'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

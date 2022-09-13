
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
 
class MyBottomNavyBar extends StatefulWidget {
  const MyBottomNavyBar({Key? key}) : super(key: key);
 
  @override
  _BottomNavyBarState createState() => _BottomNavyBarState();
}
 
class _BottomNavyBarState extends State<MyBottomNavyBar> {
  PageController _pageController = PageController();
  int _currentIndex = 0;
 
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom_Navy_Bar"),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Container(
            child: const Center(
              child: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
            color: Colors.red,
          ),
          Container(
            child: const Center(
              child: Text(
                "Search",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
            color: Colors.green,
          ),
          Container(
            child: const Center(
              child: Text(
                "Settings",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
            color: Colors.yellow,
          ),
          Container(
            child: const Center(
              child: Text(
                "Account",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
            color: Colors.blue,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        containerHeight: 55.0,
        backgroundColor: Colors.white70,
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeIn);
        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.apps),
            title: const Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.search_outlined),
            title: const Text('Search'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.settings),
            title: const Text(
              'Settings ',
            ),
            activeColor: Colors.yellow,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.account_box),
            title: const Text('Account'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
 
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
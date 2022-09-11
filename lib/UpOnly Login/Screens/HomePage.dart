import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:state_management/UpOnly%20Login/Screens/BorderBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff1E294E),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderBox(
                    padding: EdgeInsets.all(0),
                    width: 70,
                    height: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Good Morning',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 60,
              left: 100,
              child: Text(
                'Kazi',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 30,
              child: Text(
                'UpOnly \nWelcomes You!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  letterSpacing: 2,
                ),
              ),
            ),
            // White Card in that Widget
            buildingCard(),
            buildingCard2(),
          ],
        ),
      ),
    );
  }

// Card Widget For
  Widget buildingCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 130),
      child: Container(
        margin: EdgeInsets.only(top: 60),
        width: 500,
        height: 500,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildingCard2() {
    return ListView.builder(
        itemCount: 4, // the length
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: FlutterLogo(size: 56.0),
                    title: Text('Item 1'),
                    subtitle: Text('Item 1 subtitle'),
                    trailing: Icon(Icons.access_alarm),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

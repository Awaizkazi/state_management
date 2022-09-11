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
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
                  // buildingCard(),
                ],
              ),
            ),
            // Card in that Widget
            buildingCard(),
          ],
        ),
      ),
    );
  }

  Widget buildingCard() {
    BorderRadius.circular(12);
    return Padding(
      padding: const EdgeInsets.only(top: 90),
      child: Container(
        margin: EdgeInsets.only(top: 60),
        width: 500,
        height: 456,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}

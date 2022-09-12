import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 200,
        title: Text('My Dashboard'),
        actions: [
          Icon(Icons.search),
        ],
        centerTitle: true,
      ),
      backgroundColor: Color(0xff1E294E),
      body: SafeArea(
        child: Container(
          width: 450,
          height: 900,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
                buildingCard1(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildingCard1() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 70, 9, 29),
              Color.fromARGB(255, 233, 151, 179),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '  Call Module',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '  To being calling, get lead \n  information here. ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/call.png',
              height: 50,
              width: 80,
            ),
          ],
        ),
      ),
    );
  }
}

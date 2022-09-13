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
                buildingCard2(),
                buildingCard3(),
                buildingCard4(),
                buildingCard5(),
                buildingCard6(),
                buildingCard7(),
                buildingCard8(),
                buildingCard9(),
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
              Color.fromARGB(255, 0, 16, 1),
              Colors.green,
            ],
          ),
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 10.0),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '  Input Report',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
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

  Widget buildingCard2() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 18, 52, 57),
              Colors.cyan,
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
                  '  Call Report',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
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

  Widget buildingCard3() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(223, 47, 42, 2),
              Color.fromARGB(208, 247, 224, 10),
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
                  '  Business Report',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
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

  Widget buildingCard4() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 12, 1, 40),
              Color.fromARGB(171, 242, 8, 141),
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
                  '  My Earnings',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
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

  Widget buildingCard5() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 8, 0, 0),
              Color.fromARGB(31, 49, 23, 23),
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
                  '   PMS Update',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
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

  Widget buildingCard6() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 3, 18, 30),
              Color.fromARGB(179, 3, 103, 185),
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
                  '  My Follow Up',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
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

  Widget buildingCard7() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 244, 60, 23),
              Color.fromARGB(255, 240, 148, 35),
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
                  '  My New Business',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
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

  Widget buildingCard8() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 3, 43, 4),
              Colors.green,
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
                  '  Pending F2F',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
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

  Widget buildingCard9() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 6, 36, 40),
              Color.fromARGB(255, 33, 249, 220),
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
                  '  Pending NB Login',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
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

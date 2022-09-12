import 'package:flutter/material.dart';
import 'package:state_management/UpOnly%20Login/Screens/BorderBox.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff1E294E),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 20),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Good Morning',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 10),
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
                top: 53,
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
                top: 76,
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
              // SearchBar
              searchBar2(),
              buildingCard1(),
              buildingCard2(),
              buildingCard3(),
              buildingCard4(),
              buildingCard4(),
              buildingCard4(),
              buildingCard4(),
              buildingCard4(),
              buildingCard4(),
              buildingCard4(),
              buildingCard4(),
            ],
          ),
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

  Widget searchBar2() {
    return Padding(
      padding: const EdgeInsets.only(top: 150, bottom: 10, left: 20, right: 20),
      child: Container(
        height: 45,

        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 40,
            ),
            labelText: "Search",
            labelStyle: TextStyle(
              color: Colors.grey.shade800,fontSize: 20
            ),
            hintText: 'Search item',
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ),
    );
  }

  Widget buildingCard1() {
    return Padding(
      padding: const EdgeInsets.only(top: 210, bottom: 10, left: 20, right: 20),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 70, 9, 29),
              Color.fromARGB(255, 233, 151, 179)
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

  Widget buildingCard2() {
    return Padding(
      padding: const EdgeInsets.only(top: 305, bottom: 10, left: 20, right: 20),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 49, 44, 6), Colors.yellowAccent],
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
                  '  F2F',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '  Have you met in person?\n  Update here.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/F2F.png',
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
      padding: const EdgeInsets.only(top: 400, bottom: 10, left: 20, right: 20),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 2, 60, 5), Colors.greenAccent],
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
                  '  CRM',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '  Has the lead to become a\n  client? Update here',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/CRM.png',
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
      padding: const EdgeInsets.only(top: 500, bottom: 10, left: 20, right: 20),
      child: Container(
        width: 700,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
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
                  '  HCMS',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '  Health Care\n  Management System',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/HCMS.png',
              height: 50,
              width: 80,
            ),
          ],
        ),
      ),
    );
  }
}

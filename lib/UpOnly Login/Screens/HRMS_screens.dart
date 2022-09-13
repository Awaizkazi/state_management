import 'package:flutter/material.dart';

class HRMS_Screen extends StatefulWidget {
  const HRMS_Screen({super.key});

  @override
  State<HRMS_Screen> createState() => _HRMS_ScreenState();
}

class _HRMS_ScreenState extends State<HRMS_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E294E),
      appBar: AppBar(
        backgroundColor: Color(0xff1E294E),
        elevation: 0,
        title: Text('HRMS'),
        toolbarHeight: 200,
        actions: [
          Icon(Icons.search),
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          // width: 500,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: card4('Expense')),
                    Expanded(child: card4('Attendance')),
                    Expanded(child: card4('Track')),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(child: card4('Leaves')),
                    Expanded(child: card4('Pay Slip')),
                    Expanded(child: card4('Letter')),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    card4(
                      'Separtion',
                    ),
                    card4(
                      'My DRs',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget card4(
    String heding,
  ) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 110,
              child: Card(
                shadowColor: Colors.grey,
                elevation: 10,
                color: Colors.white,
                shape: CircleBorder(),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/CRM.png'),
                ),
              ),
            ),
            Text(
              heding,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xff1E294E,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Imageforcard() {
    Image.asset('assets/CRM.png');
  }
}

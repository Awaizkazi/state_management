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
        elevation: 10,
        leading: Icon(
          Icons.lock_open_outlined,
          size: 30,
          color: Colors.yellow,
        ),
        title: Text('HRMS'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_mark_outlined,
                color: Colors.yellow,
              ))
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
                    Expanded(
                      child: card4(
                          'Attendance', 'assets/hrms_images/Attendance.png'),
                    ),
                    Expanded(
                      child: card4(
                        'Expense',
                        'assets/hrms_images/pay.png',
                      ),
                    ),
                    Expanded(
                      child: card4('Task', 'assets/hrms_images/task.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child:
                            card4('Leaves', 'assets/hrms_images/Leaves.png')),
                    Expanded(
                        child: card4('Payslip', 'assets/hrms_images/pay.png')),
                    Expanded(
                        child:
                            card4('Letter', 'assets/hrms_images/Letter.png')),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    card4('Separtion', 'assets/hrms_images/Seperation.png'),
                    card4('My DRs', 'assets/hrms_images/DRs.png'),
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
    String image,
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
                elevation: 25,
                shape: CircleBorder(),
                child: SizedBox(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      image,
                      width: 50,
                    ),
                  ),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

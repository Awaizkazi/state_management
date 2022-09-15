import 'package:flutter/material.dart';

class Dial_Screen extends StatefulWidget {
  const Dial_Screen({super.key});

  @override
  State<Dial_Screen> createState() => _Dial_ScreenState();
}

class _Dial_ScreenState extends State<Dial_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(231, 29, 42, 85),
        centerTitle: true,
        elevation: 10,
        title: Text(
          'DIALER',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff1E294E),
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                TextFields('Name'),
                TextFields('Email'),
                TextFields('Number'),
                NumbersDialPad(Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget TextFields(String text) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: text,
          ),
        ),
      ),
    );
  }

  Widget heightSpacer(double myHeight) {
    return SizedBox(
      height: myHeight,
    );
  }

  Widget NumbersDialPad(Color) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
      ),
    );
  }
}

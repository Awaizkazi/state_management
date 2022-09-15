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
      body: Container(
        width: 700,
        height: 900,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFields('Name'),
                    TextFields('Email'),
                    TextFields('Number'),
                    // Assign a Linear gradient Color
                    // Row 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NumbersDialPad(Colors.pink, Colors.blue, 1),
                        NumbersDialPad(Colors.pink, Colors.blue, 2),
                        NumbersDialPad(Colors.pink, Colors.blue, 3),
                      ],
                    ),
                    spacing(),
                    // Row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NumbersDialPad(Colors.pink, Colors.blue, 4),
                        NumbersDialPad(Colors.pink, Colors.blue, 5),
                        NumbersDialPad(Colors.pink, Colors.blue, 6),
                      ],
                    ),
                    spacing(),
                    // Row 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NumbersDialPad(Colors.pink, Colors.blue, 7),
                        NumbersDialPad(Colors.pink, Colors.blue, 8),
                        NumbersDialPad(Colors.pink, Colors.blue, 9),
                      ],
                    ),
                    spacing(),
                    // Row 4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NumbersDialPad(
                            Colors.green, Colors.greenAccent, 'Call'),
                        NumbersDialPad(Colors.pink, Colors.blue, 0),
                        NumbersDialPad(Colors.red, Colors.redAccent, 'Remove'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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

  Widget spacing() {
    return SizedBox(
      height: 10.0,
    );
  }

  Widget NumbersDialPad(Colour, Colours, numbers) {
    return Container(
      width: 120,
      height: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colour, Colours],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          numbers.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

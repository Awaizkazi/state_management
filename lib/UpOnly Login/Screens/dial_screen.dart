import 'package:flutter/material.dart';

class Dial_Screen extends StatefulWidget {
  const Dial_Screen({super.key});

  @override
  State<Dial_Screen> createState() => _Dial_ScreenState();
}

class _Dial_ScreenState extends State<Dial_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Text(
              'DIALER',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}

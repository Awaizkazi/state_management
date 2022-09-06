import 'package:flutter/material.dart';

class TextMoving extends StatefulWidget {
  const TextMoving({super.key});

  @override
  State<TextMoving> createState() => _TextMovingState();
}

class _TextMovingState extends State<TextMoving> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Owaiz ',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Kazi ',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

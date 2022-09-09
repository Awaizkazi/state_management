import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const BorderBox(
      {super.key,
      required this.padding,
      required this.width,
      required this.height,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 8, 20, 57),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.grey.withAlpha(40), width: 2),
      ),
      padding: padding,
      child: Center(child: child),
    );
  }
}

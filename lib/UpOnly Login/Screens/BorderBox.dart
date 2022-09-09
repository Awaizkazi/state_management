import 'package:flutter/material.dart';

class BoxBorder extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const BoxBorder(
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
        color: Colors.white,
      ),
    );
  }
}

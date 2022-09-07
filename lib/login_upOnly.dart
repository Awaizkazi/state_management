import 'package:flutter/material.dart';

class LoginScreenUpOnly extends StatefulWidget {
  const LoginScreenUpOnly({super.key});

  @override
  State<LoginScreenUpOnly> createState() => _LoginScreenUpOnlyState();
}

class _LoginScreenUpOnlyState extends State<LoginScreenUpOnly> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

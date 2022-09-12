import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(231, 29, 42, 85),
        centerTitle: true,
        title: Text(
          'Information',
          style: TextStyle(fontSize: 27),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Text('Info Page'),
            ],
          ),
        ),
      ),
    );
  }
}

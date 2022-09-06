// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/services.dart';
import 'screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  Services serve = Get.find<Services>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Screen1());
        },
        child: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Screen 2',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(() {
            return Center(
              child: Text(
                '${serve.num.toString()}',
                style: TextStyle(fontSize: 20),
              ),
            );
          }),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              serve.icreaseNum();
            },
            child: Text('Increase'),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/services.dart';
import 'screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // Calling class from another file
//DataType objectName = className
  Services serve = Get.find<Services>();
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Screen2());
        },
        child: const Icon(Icons.arrow_forward_ios),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          const Text('Screen 1'),
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
            child: Text('Icrement'),
          ),
        ],
      ),
    );
  }
}

// From timeStamp 6:30
// https://www.youtube.com/watch?v=Uwdpic-3vg4